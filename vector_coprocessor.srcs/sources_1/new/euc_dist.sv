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
    output logic [9:0] out
);

logic s_axis_cartesian_tvalid;
logic [9:0] s_axis_cartesian_tdata;
logic [5:0] m_axis_dout_tdata;
logic m_axis_dout_tvalid;

cordic_0 cordic(
);

assign out = (in_A - in_B)^2;
endmodule