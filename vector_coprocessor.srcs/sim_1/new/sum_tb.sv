`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2025 10:09:08 PM
// Design Name: 
// Module Name: sum_tb
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


module sum_tb();

logic clk, rst, tx, cmd_ready;
logic [2:0] cmd_out;

vector_coprocessor #(.BRAM_DEPTH(4)) VectorCoprocessor(
    .clk, 
    .rst, 
    .cmd_out,
    .cmd_ready,
    .tx
);

always #5 clk = ~clk;

initial begin
    rst = 1'b1;
    clk = 1'b0;
    cmd_out = 'd0;
    cmd_ready = 'd0;
    #10
    rst = 1'b0;
    repeat (2) @(posedge VectorCoprocessor.clka)
    cmd_out = 'd1;
    cmd_ready = 'b1;
    #15
    cmd_out = 'd1;
    cmd_ready = 'b0;
end

endmodule
