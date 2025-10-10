`timescale 1ns / 1ps

module tb_top_fsm_command;

    // ============================================================
    // Señales principales
    // ============================================================
    logic clk;
    logic reset;
    logic rx_ready;
    logic [7:0] rx_data;

    // ============================================================
    // Salidas del DUT
    // ============================================================
    logic sel_bram;
    logic reset_bram;
    logic flag_bram;
    logic flag_command;
    logic [9:0] data_out;
    logic flag_data_ready;

    // ============================================================
    // Instancia del DUT
    // ============================================================
    top_fsm_command #(.MEMORY_DEPTH(1024)) dut (
        .clk(clk),
        .reset(reset),
        .rx_ready(rx_ready),
        .rx_data(rx_data),
        .sel_bram(sel_bram),
        .reset_bram(reset_bram),
        .flag_bram(flag_bram),
        .flag_command(flag_command),
        .data_out(data_out),
        .flag_data_ready(flag_data_ready)
    );

    // ============================================================
    // Generación del reloj
    // ============================================================
    always #5 clk = ~clk; // 100 MHz

    // ============================================================
    // Bloque principal de estímulos
    // ============================================================
    initial begin
        $display("==== INICIO DE SIMULACIÓN ====");
        clk = 0;
        reset = 1;
        rx_ready = 0;
        rx_data = 8'h00;

        #20;
        reset = 0;

        // ========================================================
        // SECUENCIA 1: Selección BRAM A y escritura de datos
        // ========================================================
        $display("\n[1] Enviando comando principal (WRITE MODE)");
        send_uart_byte(8'h00);

        $display("\n[2] Seleccionando BRAM A (sel_bram = 1)");
        send_uart_byte(8'h11);

        $display("\n[3] Enviando 4 bytes de datos (para BRAM A)...");
        send_uart_byte(8'hAB); // low byte
        send_uart_byte(8'h02); // high byte
        #40;
        send_uart_byte(8'hCD); // low byte
        send_uart_byte(8'h01); // high byte
        #40;

        mostrar_estado("Fin escritura BRAM A");

        // ========================================================
        // SECUENCIA 2: Selección BRAM B y escritura de datos
        // ========================================================
        $display("\n[4] Enviando comando principal (WRITE MODE)");
        send_uart_byte(8'h00);

        $display("\n[5] Seleccionando BRAM B (sel_bram = 1)");
        send_uart_byte(8'h01);

        $display("\n[6] Enviando 4 bytes de datos (para BRAM B)...");
        send_uart_byte(8'h34); // low byte
        send_uart_byte(8'h00); // high byte
        #40;
        send_uart_byte(8'h56); // low byte
        send_uart_byte(8'h03); // high byte
        #40;
        send_uart_byte(8'hFF); // low
        #40;
        send_uart_byte(8'hFF); // high

        mostrar_estado("Fin escritura BRAM B");

        // ========================================================
        // FIN DE SIMULACIÓN
        // ========================================================
        $display("\n==== FIN DE SIMULACIÓN ====");
        #100;
        $finish;
    end

    // ============================================================
    // Tarea: simular recepción UART (rx_ready activo un ciclo)
    // ============================================================
    task send_uart_byte(input [7:0] value);
        begin
            rx_data = value;
            rx_ready = 1;
            #10;
            rx_ready = 0;
            #100; // Espacio entre bytes
        end
    endtask

    // ============================================================
    // Tarea: Mostrar estado actual del sistema
    // ============================================================
    task mostrar_estado(input string contexto);
        begin
            $display("\n==== ESTADO (%s) ====", contexto);
            $display("sel_bram         = %b", sel_bram);
            $display("reset_bram       = %b", reset_bram);
            $display("flag_bram        = %b", flag_bram);
            $display("flag_command     = %b", flag_command);
            $display("data_out (10bit) = %b (%0d)", data_out, data_out);
            $display("flag_data_ready  = %b", flag_data_ready);
            $display("==============================\n");
        end
    endtask

endmodule
