`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2025 07:43:50 PM
// Design Name: 
// Module Name: bram_tb
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


module bram_tb();

logic [9:0] addra, addrb, dina, dinb, douta, doutb;
logic clka, clkb;
logic ena, enb;
logic wea, web;

// Functions for easier simulation
task automatic write_to_bram(input logic [9:0] addr, input logic [9:0] data);
    @(negedge clka) begin // We locate ourselves before the next posedge
        addra = addr;
        dina = data;
        ena = 1'b1;
        wea = 1'b1;
    end
    @(posedge clka) begin // Move to next cycle to complete the write
        #1
        addra = 'b0;
        dina = 'b0;
        ena = 1'b0;
        wea = 1'b0; 
    end 
endtask 

task automatic read_from_bram(input logic [9:0] addr);
    @(negedge clkb) begin // We locate ourselves before the next posedge
        addrb = addr;
        enb = 1'b1;
    end
    repeat (2) @(posedge clkb); // Wait two cycles to complete the read
    #1
    addrb = 'b0;
    enb = 1'b0;
endtask 


blk_mem_gen_0 DUT (
    .*
);

always #5 clka = ~clka;
always #8 clkb = ~clkb;

initial begin
    ena = 1'b0;
    enb = 1'b0;
    wea = 1'b0;
    web = 1'b0;
    clka = 1'b0;
    clkb = 1'b0;
    addra = 'b0;
    addrb = 'b0;
    dina = 'b0;
    dinb = 'b0;
    write_to_bram(10'h1, 10'hAB);
    read_from_bram(10'h1);
end

endmodule
