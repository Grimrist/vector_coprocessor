`timescale 1ns / 1ps

module top_fsm_command #(
    parameter MEMORY_DEPTH = 1024
)(
    input  logic clk,
    input  logic reset,
    input  logic rx_ready,
    input  logic [7:0] rx_data,
    output logic sel_bram,
    output logic reset_bram,
    output logic flag_bram,
    output logic flag_command,
    output logic [9:0] data_out,
    output logic flag_data_ready
);

    //---------------------------------------------------------
    // Señales internas
    //---------------------------------------------------------
    logic flag_write;
    logic busy_sel_bram;
    logic busy_concat;
    logic enable_fsm_read;
    logic flag_end_write;

    // Señales comunes de control (FSM_RX_ctrl)
    logic enable_common;
    logic write_enable_common;
    logic [$clog2(MEMORY_DEPTH)-1:0] write_address_common;
    logic [9:0] write_data_common;

    // Señales hacia BRAM A
    logic ena_a, wea_a;
    logic [$clog2(MEMORY_DEPTH)-1:0] addra;
    logic [9:0] dina_a;
    logic rsta;

    // Señales hacia BRAM B
    logic ena_b, wea_b;
    logic [$clog2(MEMORY_DEPTH)-1:0] addrb;
    logic [9:0] dina_b;
    logic rsta_b;

    //---------------------------------------------------------
    // Lógica de control entre FSMs
    //---------------------------------------------------------
    assign enable_fsm_read = ~(busy_sel_bram | busy_concat);

    //---------------------------------------------------------
    // FSM 1: Lectura de comando principal
    //---------------------------------------------------------
    fsm_read_command fsm_read_command_inst (
        .clk(clk),
        .reset(reset),
        .rx_ready(rx_ready),
        .enable(enable_fsm_read),
        .rx_data(rx_data),
        .flag_write(flag_write),
        .flag_command(flag_command)
    );

    //---------------------------------------------------------
    // FSM 2: Selección de bloque BRAM según segundo byte
    //---------------------------------------------------------
    fsm_sel_bram fsm_sel_bram_inst (
        .clk(clk),
        .reset(reset),
        .rx_ready(rx_ready),
        .flag_write(flag_write),
        .rx_data(rx_data),
        .sel_bram(sel_bram),
        .reset_bram(reset_bram),
        .flag_bram(flag_bram),
        .busy_sel_bram(busy_sel_bram),
        .flag_end_write(flag_end_write)
    );

    //---------------------------------------------------------
    // FSM 3: Concatenación de bytes recibidos (dato de 10 bits)
    //---------------------------------------------------------
    fsm_concatenation fsm_concatenation_inst (
        .clk(clk),
        .reset(reset),
        .rx_ready(rx_ready),
        .rx_data(rx_data),
        .flag_bram(flag_bram),
        .data_out(data_out),
        .flag_data_ready(flag_data_ready),
        .busy_concat(busy_concat),
        .flag_end_write(flag_end_write)
    );

    //---------------------------------------------------------
    // FSM 4: Control de escritura en BRAM
    //---------------------------------------------------------
    FSM_RX_ctrl #(
        .MEMORY_DEPTH(MEMORY_DEPTH)
    ) FSM_RX_ctrl_inst (
        .clk(clk),
        .rst(reset),
        .rx_ready(flag_data_ready),  // viene de fsm_concatenation
        .rx_data(data_out),          // viene de fsm_concatenation
        .enable(enable_common),
        .write_enable(write_enable_common),
        .write_address(write_address_common),
        .write_data(write_data_common)
    );

    //---------------------------------------------------------
    // Multiplexores de selección de banco BRAM
    //---------------------------------------------------------
    // Selección de señales de control
    always_comb begin
        // Banco A (sel_bram = 0)
        ena_a  = (sel_bram == 1'b0) ? enable_common       : 1'b0;
        wea_a  = (sel_bram == 1'b0) ? write_enable_common : 1'b0;
        addra  = (sel_bram == 1'b0) ? write_address_common : '0;
        dina_a = (sel_bram == 1'b0) ? write_data_common : '0;
        rsta   = (sel_bram == 1'b0) ? reset_bram : 1'b0;

        // Banco B (sel_bram = 1)
        ena_b  = (sel_bram == 1'b1) ? enable_common       : 1'b0;
        wea_b  = (sel_bram == 1'b1) ? write_enable_common : 1'b0;
        addrb  = (sel_bram == 1'b1) ? write_address_common : '0;
        dina_b = (sel_bram == 1'b1) ? write_data_common : '0;
        rsta_b = (sel_bram == 1'b1) ? reset_bram : 1'b0;
    end

    //---------------------------------------------------------
    // BRAM A
    //---------------------------------------------------------
    blk_mem_gen_0 BRAM_A (
        .clka(clk),
        .rsta(rsta),
        .ena(ena_a),
        .wea(wea_a),
        .addra(addra),
        .dina(dina_a),
        .douta(),
        .clkb(clk),
        .enb(1'b0),
        .web(1'b0),
        .addrb('0),
        .dinb('0),
        .doutb(),
        .rsta_busy(),
        .rstb_busy()
    );

    //---------------------------------------------------------
    // BRAM B
    //---------------------------------------------------------
    blk_mem_gen_1 BRAM_B (
        .clka(clk),
        .rsta(rsta_b),
        .ena(ena_b),
        .wea(wea_b),
        .addra(addrb),
        .dina(dina_b),
        .douta(),
        .clkb(clk),
        .enb(1'b0),
        .web(1'b0),
        .addrb('0),
        .dinb('0),
        .doutb(),
        .rsta_busy(),
        .rstb_busy()
    );

endmodule
