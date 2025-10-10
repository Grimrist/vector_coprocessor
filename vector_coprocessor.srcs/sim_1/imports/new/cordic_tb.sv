`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 10:20:59 PM
// Design Name: 
// Module Name: cordic_tb
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


module cordic_tb();

logic aclk;

logic s_axis_cartesian_tvalid;
logic [9:0] s_axis_cartesian_tdata;
logic [5:0] m_axis_dout_tdata;
logic m_axis_dout_tvalid;

cordic_0 cordic(
    .*
);

always #5 aclk = ~aclk;

initial begin
    aclk = 'b0;
    s_axis_cartesian_tvalid = 'b0;
    s_axis_cartesian_tdata = 'b0;
    #15
    s_axis_cartesian_tdata = 10'd16;
    s_axis_cartesian_tvalid = 'b1;
    #10
    s_axis_cartesian_tdata = 10'd4;
end
endmodule
