`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2025 07:09:54 PM
// Design Name: 
// Module Name: man_dist
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


module man_dist(
    input logic [9:0] in_A, in_B,
    output logic [9:0] out
);


assign out = in_A - in_B;
endmodule
