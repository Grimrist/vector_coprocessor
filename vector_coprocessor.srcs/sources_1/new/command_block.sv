`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2025 11:11:20 PM
// Design Name: 
// Module Name: command_block
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


module command_block (
    input logic clk, rst,
    input logic [3:0] rx_data,
    input logic flag_command,
    output logic [1:0] cmd,
    output logic bram_sel,
    output logic cmd_ready,
    output logic out_mode,
    output logic [1:0] max_pck,
    output logic sqrt_res
);

assign cmd = rx_data[1:0];
assign out_mode = rx_data[2]; 
assign bram_sel = rx_data[3];
assign sqrt_res = (rx_data[2:0] == 3'b101) ? 1'd1 : 1'd0;
assign max_pck = (out_mode) ? 2'd3 : 2'd1;

always_ff @(posedge clk) begin
    if (rst)
        cmd_ready <= 'b0;
    else if (flag_command)
        cmd_ready <= 'b1;
    else if (cmd_ready)
        cmd_ready <= 'b0;
end

endmodule
