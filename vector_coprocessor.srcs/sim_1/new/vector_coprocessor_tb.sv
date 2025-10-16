`timescale 1ns / 1ps

module vector_coprocessor_tb();

// --------------------------
// Parámetros generales
// --------------------------
localparam int CLK_FREQ_HZ = 100_000_000;
localparam int BAUD        = 115200;
localparam real T_CLK_NS   = 1e9 / CLK_FREQ_HZ;
localparam int BIT_CLKS    = CLK_FREQ_HZ / BAUD;

// --------------------------
// Señales hacia/desde el DUT
// --------------------------
logic clk, resetN, rx, tx;
logic [6:0] segments;
logic [7:0] anodes;

vector_coprocessor dut (
    .clk   (clk),
    .rst_n (resetN),
    .rx    (rx),
    .tx    (tx),
    .segments(segments),
    .anodes(anodes)
);

// --------------------------
// Generador de reloj
// --------------------------
initial clk = 0;
always #(T_CLK_NS/2.0) clk = ~clk;

// --------------------------
// Tareas UART
// --------------------------
task automatic uart_send_byte(input byte b);
    int i;
    begin
        rx = 0; repeat (BIT_CLKS) @(posedge clk); // start
        for (i = 0; i < 8; i++) begin
            rx = b[i];
            repeat (BIT_CLKS) @(posedge clk);
        end
        rx = 1; repeat (BIT_CLKS) @(posedge clk); // stop
    end
endtask

task automatic uart_recv_bytes(output bit [31:0] word_out);
    byte b0, b1, b2, b3;
    bit ok;
    begin
        uart_recv_byte(b0, ok);
        uart_recv_byte(b1, ok);
        uart_recv_byte(b2, ok);
        uart_recv_byte(b3, ok);
        word_out = {b3, b2, b1, b0};
    end
endtask

task automatic uart_recv_byte(output byte b, output bit ok);
    int i;
    begin
        b  = 0;
        ok = 0;
        wait (tx == 0); // start
        repeat (BIT_CLKS + BIT_CLKS/2) @(posedge clk);
        for (i = 0; i < 8; i++) begin
            b[i] = tx;
            repeat (BIT_CLKS) @(posedge clk);
        end
        ok = 1;
    end
endtask

// --------------------------
// Reset
// --------------------------
task automatic apply_reset();
    begin
        resetN = 0; rx = 1;
        repeat (10) @(posedge clk);
        resetN = 1;
        repeat (10) @(posedge clk);
    end
endtask

// --------------------------
// Test principal
// --------------------------
localparam int N = 8;
int A [N], B [N];
int diff [N];
int acc;
real euc_ref;
bit [31:0] euc_hw;
int i;

initial begin
    apply_reset();
    
    // Vectores fijos
    A = '{0, 5, 1023, 512, 175, 198, 129, 229};
    B = '{0, 3, 0,   256, 38,  94,  137, 35};

    // (1) Cargar BRAMA
    uart_send_byte(8'h00); // cabecera BRAMA
    uart_send_byte(8'h00);
    for (i = 0; i < N; i++) begin
        uart_send_byte(A[i][7:0]); // byte bajo
        uart_send_byte(A[i][15:8]); // byte alto
        repeat (BIT_CLKS/8) @(posedge clk);
    end
    uart_send_byte(8'hFF); // fin
    uart_send_byte(8'hFF);

    // (2) Cargar BRAMB
    uart_send_byte(8'h00);
    uart_send_byte(8'h11);
    for (i = 0; i < N; i++) begin
        uart_send_byte(B[i][7:0]);
        uart_send_byte(B[i][15:8]);
        repeat (BIT_CLKS/8) @(posedge clk);
    end
    uart_send_byte(8'hFF);
    uart_send_byte(8'hFF);

    // (3) Calcular referencia
    acc = 0;
    for (i = 0; i < N; i++) begin
        diff[i] = A[i] - B[i];
        acc += diff[i] * diff[i];
    end
    euc_ref = $sqrt(acc);

    // (4) Enviar comando eucDist
    uart_send_byte(8'b0000_0101); // eucDist = 0b101
    
    

    // (5) Recibir resultado HW
    uart_recv_bytes(euc_hw);
    #1000
    uart_send_byte(8'b0000_0101); // eucDist = 0b101

    $display("A = %p", A);
    $display("B = %p", B);
    $display("Resultado HW   : %0d", euc_hw);
    $display("Resultado REF  : %0f", euc_ref);
    $display("Diferencia abs.: %0f", $itor(euc_hw) - euc_ref);

    #1_000_000;
    $finish;
end

endmodule
