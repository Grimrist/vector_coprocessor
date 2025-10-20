`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 01:46:16 PM
// Design Name: 
// Module Name: dff_sync_ack
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


module dff_sync_ack (
    input clk, in,
    output out_sync, out_sync_pulse
);

(* ASYNC_REG = "TRUE" *) logic out_temp, out_sync_reg, out_sync_delay;

always_ff @(posedge clk) begin
    out_temp <= in;
    out_sync_reg <= out_temp;
    out_sync_delay <= out_sync_reg;
end    

assign out_sync = out_sync_reg;
assign out_sync_pulse = out_sync_reg & ~out_sync_delay;

endmodule
