`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2025 07:09:54 PM
// Design Name: 
// Module Name: euc_dist
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


module euc_dist (
    input logic [9:0] in_A, in_B, 
    input logic [29:0] in_res,
    output logic [29:0] out
);

//logic s_axis_cartesian_tvalid;
//logic [9:0] s_axis_cartesian_tdata;
//logic [5:0] m_axis_dout_tdata;
//logic m_axis_dout_tvalid;

//cordic_0 cordic(
//);
logic [29:0] out_sub, out_exp;
assign out_sub = in_A - in_B;
assign out_exp = (out_sub)^2;
assign out = out_exp + in_res;

endmodule