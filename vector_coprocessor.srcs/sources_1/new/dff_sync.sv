`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2025 01:45:44 PM
// Design Name: 
// Module Name: dff_sync
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


module dff_sync (
    input clk, in,
    output out_sync
);

(* ASYNC_REG = "TRUE" *) logic out_temp, out_sync_reg;

always_ff @(posedge clk) begin
    out_temp <= in;
    out_sync_reg <= out_temp;
end    

assign out_sync = out_sync_reg;

endmodule
