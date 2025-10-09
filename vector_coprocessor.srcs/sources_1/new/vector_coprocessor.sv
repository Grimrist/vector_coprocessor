`timescale 1ns / 1ps

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
