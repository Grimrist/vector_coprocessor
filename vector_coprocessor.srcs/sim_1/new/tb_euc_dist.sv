`timescale 1ns / 1ps
module tb_euc_dist;

    // Señales
    logic clk, data_ready;
    logic [9:0] in_A, in_B;
    logic [29:0] in_res;
    logic [29:0] out;
    logic done;

    // Vectores de prueba 
    logic [9:0] A[0:3];
    logic [9:0] B[0:3];

    // Instancia del DUT
    euc_dist dut (
        .clk(clk),
        .data_ready(data_ready),
        .in_A(in_A),
        .in_B(in_B),
        .in_res(in_res),
        .out(out),
        .done(done)
    );

    // Clock 100 MHz
    always #5 clk = ~clk;

    initial begin
        // Inicializar señales
        clk = 0;
        data_ready = 0;
        in_res = 0;

        // Inicializar vectores
        A[0] = 0;     B[0] = 0;
        A[1] = 5;     B[1] = 3;
        A[2] = 1023;  B[2] = 0;
        A[3] = 512;   B[3] = 256;

        $display("Iniciando simulación de euc_dist...");

        // Recorrer cada elemento del vector
        for (int i = 0; i < 4; i++) begin
            in_A = A[i];
            in_B = B[i];

            // Esperar un ciclo de reloj para que euc_accumulate actualice in_res
            @(posedge clk);
            in_res = dut.acc_out; 
        end

        // Pulso de un ciclo para activar CORDIC
        @(posedge clk) data_ready = 1;
        @(posedge clk) data_ready = 0;

        // Esperar resultado final del CORDIC
        wait(done);
        @(posedge clk);

        $display("Resultado final sqrt(sum((A-B)^2)) = %0d", out);
        $stop;
    end

endmodule
