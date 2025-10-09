`timescale 1ns / 1ps

module tb_top_uart_loopback;

    // Parámetros del DUT
    localparam CLK_FREQUENCY = 100_000_000;
    localparam BAUD_RATE     = 115200;
    localparam CLK_PERIOD    = 1_000_000_000 / CLK_FREQUENCY; // ns
    localparam BIT_PERIOD    = 1_000_000_000 / BAUD_RATE;     // ns (~8680 ns)

    // Señales
    logic clk;
    logic reset;
    logic rx;
    logic tx;

    // DUT
    top_uart_loopback #(
        .CLK_FREQUENCY(CLK_FREQUENCY),
        .BAUD_RATE(BAUD_RATE)
    ) dut (
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .tx(tx)
    );

    // Generador de reloj
    always #(CLK_PERIOD/2) clk = ~clk;

    // Tarea para enviar un byte por RX
    task send_byte(input [7:0] data);
        integer i;
        begin
            // Bit de start
            rx <= 1'b0;
            #(BIT_PERIOD);

            // Bits de datos (LSB primero)
            for (i = 0; i < 8; i++) begin
                rx <= data[i];
                #(BIT_PERIOD);
            end

            // Bit de stop
            rx <= 1'b1;
            #(BIT_PERIOD);
        end
    endtask

    // Estímulo principal
    initial begin
        // Inicialización
        clk   = 0;
        reset = 1;
        rx    = 1; // línea UART en reposo
        #(10*CLK_PERIOD);
        reset = 0;

        // Espera un poco
        #(10*BIT_PERIOD);

        // Enviar un par de bytes
        $display("Enviando 0x55...");
        send_byte(8'h55);

        #(12*BIT_PERIOD);

        $display("Enviando 0xA3...");
        send_byte(8'hA3);

        #(12*BIT_PERIOD);

        $display("Test finalizado.");
        $stop;
    end

endmodule

