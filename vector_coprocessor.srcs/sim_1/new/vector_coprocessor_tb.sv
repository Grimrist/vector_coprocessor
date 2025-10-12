`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 02:47:38 PM
// Design Name: 
// Module Name: vector_coprocessor_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vector_coprocessor_tb();

// --------------------------
// Parámetros
// --------------------------
localparam int  CLK_FREQ_HZ = 100_000_000;   // 100 MHz
localparam int  BAUD        = 115200;
localparam real T_CLK_NS    = 1e9 / CLK_FREQ_HZ;   // 10 ns
localparam int  BIT_CLKS    = CLK_FREQ_HZ / BAUD;  // ~868 ciclos por bit
localparam int  MEM_DEPTH   = 16;
localparam int  N_BYTES     = 16;

// --------------------------
// Señales hacia/desde el DUT
// --------------------------
logic clk;
logic resetN;        // reset activo en BAJO (negado)
logic rx;            // PC -> FPGA
logic tx;            // FPGA -> PC

// Instancia del TOP (ajusta nombre/puertos si difieren)
vector_coprocessor #(.MEMORY_DEPTH(MEM_DEPTH)) dut (
    .clk       (clk),
    .rst_n     (resetN),
    .rx        (rx),
    .tx        (tx)
);

// --------------------------
// Reloj y reset
// --------------------------
initial clk = 1'b0;
always #(T_CLK_NS/2.0) clk = ~clk;

task automatic apply_reset();
    begin
        resetN   = 1'b0;   // ASSERT (activo en bajo)
        rx       = 1'b1;   // UART idle
        repeat (10) @(posedge clk);
        resetN   = 1'b1;     // DEASSERT
        repeat (10) @(posedge clk);
    end
endtask

// --------------------------
// Tareas UART
// --------------------------
task automatic uart_send_byte(input byte b);
    int i;
    begin
        // start bit
        rx = 1'b0; repeat (BIT_CLKS) @(posedge clk);
        // 8 bits LSB-first
        for (i = 0; i < 8; i++) begin
        rx = b[i];
        repeat (BIT_CLKS) @(posedge clk);
        end
        // stop bit
        rx = 1'b1; repeat (BIT_CLKS) @(posedge clk);
    end
endtask

task automatic uart_recv_byte(output byte b, output bit ok);
    int i;
    int timeout;
    begin
        b  = 8'h00;
        ok = 1'b0;
        
        // esperar start bit (1->0) con timeout
        timeout = 0;
        while (tx == 1'b1) begin
            @(posedge clk);
            timeout++;
            if (timeout > (CLK_FREQ_HZ/200)) begin // ~5 ms
                ok = 0;
                disable uart_recv_byte;
            end
        end
        
        // centro del primer bit de datos (1.5 bit times)
        repeat (BIT_CLKS + BIT_CLKS/2) @(posedge clk);
        
        // muestrear 8 bits
        for (i = 0; i < 8; i++) begin
            b[i] = tx;
            repeat (BIT_CLKS) @(posedge clk);
        end
        
        ok = 1'b1;
    end
endtask

// --------------------------
// Estímulos
// --------------------------
bit [9:0] to_send_a [N_BYTES];
bit [9:0] to_send_b [N_BYTES];

byte rx_byte_msb, rx_byte_lsb, rx_byte_xlsb, rx_byte_xmsb;
bit [31:0] rx_data;
bit  ok;
int  i;

initial begin
    // $dumpfile("tb.vcd"); $dumpvars(0, tb);
    
    apply_reset();
    
    // (1) Pre-cargar BRAM vía RX con 16 bytes (1..16)
    for (i = 0; i < N_BYTES; i++) std::randomize(to_send_a);
    
    $display("[%0t] Pre-cargando BRAM_A por RX con %0d bytes (1..16)...", $time, N_BYTES);
    uart_send_byte(0);
    uart_send_byte(0);
    for (i = 0; i < N_BYTES; i++) begin
      uart_send_byte(to_send_a[i][7:0]);
      uart_send_byte({6'b0, to_send_a[i][9:8]});
      repeat (BIT_CLKS/4) @(posedge clk); // pequeño gap
    end
    // (1.5) Enviar byte de fin
    uart_send_byte(8'hFF);
    uart_send_byte(8'hFF);
    
    repeat (BIT_CLKS/4) @(posedge clk); // pequeño gap
    
    // (1) Pre-cargar BRAM vía RX con 16 bytes (1..16)
    for (i = 0; i < N_BYTES; i++) std::randomize(to_send_b);
    
    $display("[%0t] Pre-cargando BRAM_B por RX con %0d bytes (1..16)...", $time, N_BYTES);
    uart_send_byte(0);
    uart_send_byte('h11);
    for (i = 0; i < N_BYTES; i++) begin
      uart_send_byte(to_send_b[i][7:0]);
      uart_send_byte({6'b0, to_send_b[i][9:8]});
      repeat (BIT_CLKS/4) @(posedge clk); // pequeño gap
    end
    // (1.5) Enviar byte de fin
    uart_send_byte(8'hFF);
    uart_send_byte(8'hFF);
    
    repeat (BIT_CLKS/4) @(posedge clk); // pequeño gap
    
    // (2) Enviar comando de lectura
    uart_send_byte(8'b0000_0001);
    
    // (3) Capturar 16 bytes desde TX y mostrarlo
    for (i = 0; i < N_BYTES; i++) begin
        uart_recv_byte(rx_byte_lsb, ok);
        uart_recv_byte(rx_byte_msb, ok);
        rx_data = rx_byte_lsb | (rx_byte_msb[1:0] << 8);
        if (!ok) $fatal(1, "[%0t] Timeout esperando el byte en TX", $time);
        $display("[%0t] TX_byte(addr=2) = %0d (0x%02x)", $time, rx_data, rx_data);
    end
//    uart_recv_byte(rx_byte_xlsb, ok);
//    uart_recv_byte(rx_byte_lsb, ok);
//    uart_recv_byte(rx_byte_msb, ok);
//    uart_recv_byte(rx_byte_xmsb, ok);
//    rx_data = rx_byte_xlsb | (rx_byte_lsb << 8) | (rx_byte_msb << 16) | (rx_byte_xmsb << 24);
//    if (!ok) $fatal(1, "[%0t] Timeout esperando el byte en TX", $time);
//    $display("[%0t] TX_byte(addr=2) = %0d (0x%02x)", $time, rx_data, rx_data);
    
    
    $display("[%0t] Fin del test.", $time);
    #100_000;
    $finish;
end



endmodule
