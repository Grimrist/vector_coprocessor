`timescale 1ns/1ps

module tb_dot_prod;

    // -----------------------------------------------------------
    // Señales del DUT
    // -----------------------------------------------------------
    logic [9:0]  in_A, in_B;
    logic [29:0] in_res;
    logic [29:0] out;

    // -----------------------------------------------------------
    // Instanciación del DUT
    // -----------------------------------------------------------
    dot_prod dut (
        .in_A(in_A),
        .in_B(in_B),
        .in_res(in_res),
        .out(out)
    );

    // -----------------------------------------------------------
    // Inicialización y test
    // -----------------------------------------------------------
    initial begin
        // Inicialización
        in_res = 0;
        in_A   = 0;
        in_B   = 0;

        $display("Tiempo\tin_A\tin_B\tin_res\tout");

        // -------------------------------------------------------
        // Test 1: valores pequeños
        in_A = 10'd3;
        in_B = 10'd2;
        #1; // módulo combinacional, basta 1ns
        $display("%0t\t%0d\t%0d\t%0d\t%0d", $time, in_A, in_B, in_res, out);

        // Acumular resultado parcial
        in_res = out;

        // -------------------------------------------------------
        // Test 2: valores grandes
        in_A = 10'd1023;
        in_B = 10'd512;
        #1;
        $display("%0t\t%0d\t%0d\t%0d\t%0d", $time, in_A, in_B, in_res, out);

        in_res = out;

        // -------------------------------------------------------
        // Test 3: valores medios
        in_A = 10'd256;
        in_B = 10'd128;
        #1;
        $display("%0t\t%0d\t%0d\t%0d\t%0d", $time, in_A, in_B, in_res, out);

        #10;
        $finish;
    end

endmodule

