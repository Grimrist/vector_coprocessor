`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2025 11:50:41 PM
// Design Name: 
// Module Name: uart_rx_logic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_rx_logic #(
    parameter CLK_FREQUENCY = 100_000_000,
    parameter BAUD_RATE = 115200,
    parameter MEMORY_DEPTH = 1024
)(
    input logic clk, rst, 
    input logic rx,
    output logic ena_a, wea_a, rsta_a,
    output logic [$clog2(MEMORY_DEPTH)-1:0] addra_a,
    output logic [9:0] dina_a,
    output logic ena_b, wea_b, rsta_b,
    output logic [$clog2(MEMORY_DEPTH)-1:0] addra_b,
    output logic [9:0] dina_b,
    output logic flag_command, flag_write,
    output logic [7:0] rx_data
);

logic rx_ready;

// Instancia del receptor UART
top_uart_rx #(
    .CLK_FREQUENCY(CLK_FREQUENCY),
    .BAUD_RATE(BAUD_RATE)
) uart_rx_inst (
    .clk(clk),
    .reset(rst),  // reset activo en alto dentro del módulo
    .rx(rx),
    .rx_data(rx_data),
    .rx_ready(rx_ready)
);

//---------------------------------------------------------
// Señales internas
//---------------------------------------------------------
logic busy_sel_bram;
logic busy_concat;
logic enable_fsm_read;
logic flag_end_write;
logic [9:0] data_out;

// Señales comunes de control (FSM_RX_ctrl)
logic enable_common;
logic write_enable_common;
logic [$clog2(MEMORY_DEPTH)-1:0] write_address_common;
logic [9:0] write_data_common;

//---------------------------------------------------------
// Lógica de control entre FSMs
//---------------------------------------------------------
assign enable_fsm_read = ~(busy_sel_bram | busy_concat);

//---------------------------------------------------------
// FSM 1: Lectura de comando principal
//---------------------------------------------------------
fsm_read_command fsm_read_command_inst (
    .clk(clk),
    .reset(rst),
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
    .reset(rst),
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
    .reset(rst),
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
    .rst(rst),
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
    addra_a  = (sel_bram == 1'b0) ? write_address_common : '0;
    dina_a = (sel_bram == 1'b0) ? write_data_common : '0;
    rsta_a   = (sel_bram == 1'b0) ? reset_bram : 1'b0;

    // Banco B (sel_bram = 1)
    ena_b  = (sel_bram == 1'b1) ? enable_common       : 1'b0;
    wea_b  = (sel_bram == 1'b1) ? write_enable_common : 1'b0;
    addra_b  = (sel_bram == 1'b1) ? write_address_common : '0;
    dina_b = (sel_bram == 1'b1) ? write_data_common : '0;
    rsta_b = (sel_bram == 1'b1) ? reset_bram : 1'b0;
end

endmodule
