`timescale 1ns / 1ps

module tb_uart_vector;

    // Parámetros
    localparam CLK_PERIOD   = 10;          // 100 MHz
    localparam BAUD_RATE    = 115200;
    localparam BIT_PERIOD   = 1_000_000_000 / BAUD_RATE; // ns (~8680 ns)

    // Señales globales
    logic clk;
    logic reset;

    // Señales UART
    logic uart_rx;
    logic [7:0] rx_data;
    logic       rx_ready;

    // Señales BRAM / vector_coprocessor
    logic [9:0] addra, addrb, dina, dinb, douta, doutb;
    logic clka, clkb;
    logic ena, enb;
    logic wea, web;

    // Instanciar top_uart_rx
    top_uart_rx #(
        .CLK_FREQUENCY(100_000_000),
        .BAUD_RATE(BAUD_RATE)
    ) uart_rx_inst (
        .clk(clk),
        .reset(reset),
        .rx(uart_rx),
        .rx_data(rx_data),
        .rx_ready(rx_ready)
    );

    // Instanciar vector_coprocessor
    blk_mem_gen_0 vc_inst (
      .*
    );

    // Clock
    initial clk = 0;
    always #(CLK_PERIOD/2) clk = ~clk;

    // Reset
    initial begin
        reset = 1;
        uart_rx = 1;  // línea UART idle
        ena = 0; enb = 0; wea = 0; web = 0;
        #(20*CLK_PERIOD);
        reset = 0;
    end

    // Task para enviar un byte por UART
    task automatic uart_send_byte(input [7:0] data);
        integer i;
        begin
            uart_rx = 0;  // start bit
            #(BIT_PERIOD);
            for (i = 0; i < 8; i=i+1) begin
                uart_rx = data[i];
                #(BIT_PERIOD);
            end
            uart_rx = 1; // stop bit
            #(BIT_PERIOD);
        end
    endtask
always #5 clka = ~clka;
always #8 clkb = ~clkb;

    // Estímulos
    initial begin
        clka = 1'b0;
        clkb = 1'b0;
        #(200*CLK_PERIOD);
        uart_send_byte(8'hAB);
        #(10*200*CLK_PERIOD);
        uart_send_byte(8'h55);
        // Ejemplo: usar rx_data como dirección o dato para BRAM
        #(10*200*CLK_PERIOD);
        ena = 1;
        wea = 1;
        addra = 10'h1;  // simple ejemplo
        dina = rx_data;   // valor de prueba
        #(20);
        addrb = 10'h1;
        wea = 0;
    end

endmodule

