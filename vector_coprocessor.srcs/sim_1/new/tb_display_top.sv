`timescale 1ns / 1ps

module tb_display_top;

    // Señales de prueba
    logic clk;
    logic rst;
    logic [29:0] result;
    logic out_mode;
    logic [6:0] segments;
    logic [7:0] anodes;

    // Instancia del módulo bajo prueba
    display_top DUT (
        .clk(clk),
        .rst(rst),
        .result(result),
        .out_mode(out_mode),
        .segments(segments),
        .anodes(anodes)
    );

    // Clock de 50 MHz (20 ns period)
    initial clk = 0;
    always #10 clk = ~clk;

    // Secuencia de prueba
    initial begin
        // Reset inicial
        rst = 1;
        out_mode = 0;
        result = 30'b0;
        #50;
        rst = 0;

        // Test 1: out_mode = 0 → displays apagados
        out_mode = 0;
        result = 30'd123456;
        #500;  // más tiempo para observar
        $display("Test 1: segments=%b anodes=%b", segments, anodes);

        // Test 2: out_mode = 1 → muestra valor
        out_mode = 1;
        result = 30'd123456;
        #1000; // dar tiempo para la conversión BCD
        $display("Test 2: segments=%b anodes=%b", segments, anodes);

        // Test 3: otro valor
        result = 30'd987654;
        #1000; // más tiempo para la conversión BCD
        $display("Test 3: segments=%b anodes=%b", segments, anodes);

        // Test 4: valor pequeño
        result = 30'd42;
        #1000;
        $display("Test 4: segments=%b anodes=%b", segments, anodes);

        // Fin de la simulación
        #500;
        $finish;
    end

endmodule
