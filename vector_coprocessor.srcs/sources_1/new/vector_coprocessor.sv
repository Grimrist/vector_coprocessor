`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2025 12:07:09 PM
// Design Name: 
// Module Name: vector_coprocessor
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


module vector_coprocessor(
    
    );
    
logic [9:0] addra, addrb, dina, dinb, douta, doutb;
logic clka, clkb;
logic ena, enb;
logic wea, web;

blk_mem_gen_0 BRAM_Vector_A (
    .*
);

endmodule
