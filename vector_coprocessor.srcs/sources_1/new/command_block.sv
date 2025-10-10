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
    output logic [2:0] cmd,
    output logic bram_sel,
    output logic reset_res,
    output logic cmd_ready
);

assign cmd = rx_data[2:0];
assign bram_sel = rx_data[3];

always_comb begin
    if (cmd_ready)
        reset_res = 'b1;
    else
        reset_res = 'b0;
end

always_ff @(posedge clk) begin
    if (rst)
        cmd_ready <= 'b0;
    else if (flag_command)
        cmd_ready <= 'b1;
    else if (cmd_ready)
        cmd_ready <= 'b0;
end

endmodule
