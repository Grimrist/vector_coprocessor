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


module man_dist (
    input logic [9:0] in_A, in_B, 
    input logic [29:0] in_res,
    output logic [29:0] out
);

//assign out = (in_A - in_B) + in_res;
logic [29:0] out_sub, out_sub_abs;
assign out_sub = ({20'b0, in_A} - {20'b0, in_B});

always_comb begin
    if (out_sub[29] == 1'b1)
        out_sub_abs = -out_sub;
    else
        out_sub_abs = out_sub;
end

assign out = out_sub_abs + in_res;
endmodule
