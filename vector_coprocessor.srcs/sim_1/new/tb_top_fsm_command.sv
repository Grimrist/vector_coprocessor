`timescale 1ns / 1ps

module tb_top_fsm_command;

    // Señales principales
    logic clk;
    logic reset;
    logic rx_ready;
    logic [7:0] rx_data;

    // Salidas del DUT
    logic sel_bram;
    logic reset_bram;
    logic flag_bram;
    logic flag_command;
    logic [9:0] data_out;
    logic flag_data_ready;

    // Salidas hacia BRAM
    logic enable;
    logic write_enable;
    logic [$clog2(1024)-1:0] write_address;
    logic [9:0] write_data;

    //---------------------------------------------------------
    // Instancia del DUT
    //---------------------------------------------------------
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
        .flag_data_ready(flag_data_ready),
        .enable(enable),
        .write_enable(write_enable),
        .write_address(write_address),
        .write_data(write_data)
    );

    //---------------------------------------------------------
    // Generación del reloj
    //---------------------------------------------------------
    always #5 clk = ~clk; // 100 MHz

    //---------------------------------------------------------
    // Estímulos de prueba
    //---------------------------------------------------------
    initial begin
        $display("==== INICIO DE SIMULACIÓN ====");
        clk = 0;
        reset = 1;
        rx_ready = 0;
        rx_data = 8'h00;

        #15;
        reset = 0;

        // --- Trama 1: Selección de modo WRITE ---
        $display("\n[1] Enviando byte 0x00 (WRITE MODE)");
        send_uart_byte(8'h00);

        // --- Trama 2: Seleccionar BRAM A ---
        $display("\n[2] Enviando byte 0x00 (Seleccionar BRAM A)");
        send_uart_byte(8'h00);

        // --- Trama 3 y 4: Datos concatenados ---
        $display("\n[3] Enviando 2 bytes de datos...");
        send_uart_byte(8'hAB); // Low byte
        send_uart_byte(8'h02); // High byte (bits [1:0] válidos)
        #50
        send_uart_byte(8'hFF); // otro dato de ejemplo
        #50;
        send_uart_byte(8'h03); // otro dato de ejemplo
        #50;
        send_uart_byte(8'hFF); // otro dato de ejemplo
        #50;
        send_uart_byte(8'h11); // otro dato de ejemplo
        

        // --- Mostrar resultados ---
        $display("\n==== RESULTADOS ====");
        $display("sel_bram         = %b", sel_bram);
        $display("flag_bram        = %b", flag_bram);
        $display("data_out (10bit) = %b (%0d)", data_out, data_out);
        $display("flag_data_ready  = %b", flag_data_ready);
        $display("enable           = %b", enable);
        $display("write_enable     = %b", write_enable);
        $display("write_address    = %0d", write_address);
        $display("write_data       = %b (%0d)", write_data, write_data);
        $display("======================");

        #50;
        $finish;
    end

    //---------------------------------------------------------
    // Tarea: simular recepción UART (rx_ready activo un ciclo)
    //---------------------------------------------------------
    task send_uart_byte(input [7:0] value);
        begin
            rx_data = value;
            rx_ready = 1;
            #10;
            rx_ready = 0;
            #20; // Espacio entre bytes
        end
    endtask

endmodule
