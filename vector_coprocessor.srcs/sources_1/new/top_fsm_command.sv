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
    output logic flag_data_ready,
    // --- salidas hacia BRAM  ---
    output logic enable,
    output logic write_enable,
    output logic [$clog2(MEMORY_DEPTH)-1:0] write_address,
    output logic [9:0] write_data
);

    //---------------------------------------------------------
    // Señales internas
    //---------------------------------------------------------
    logic flag_write;
    logic busy_sel_bram;
    logic busy_concat;
    logic enable_fsm_read;

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
        .busy_sel_bram(busy_sel_bram)
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
        .busy_concat(busy_concat)
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
        .enable(enable),
        .write_enable(write_enable),
        .write_address(write_address),
        .write_data(write_data)
    );
    
     //---------------------------------------------------------
    // FSM 4: Control de escritura en BRAM
    //---------------------------------------------------------
    
     blk_mem_gen_0 bram(
    .clka(clk),
    .ena(enable),
    .wea(write_enable),
    .addra(write_address),
    .dina(write_data),
    .douta(), 
    .clkb(clk),
    .enb(1'b0),
    .web(1'b0),
    .addrb('0),
    .dinb('0),
    .doutb()
    );

endmodule
