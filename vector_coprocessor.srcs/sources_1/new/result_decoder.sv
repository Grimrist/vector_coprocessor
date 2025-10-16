`timescale 1ns / 1ps

module result_decoder(
    input logic clk,rst,
    input logic [29:0] result,
    output logic [6:0] seg0,seg1,seg2,seg3,seg4,seg5,seg6,seg7
    );
    
    logic [31:0]bcd;
    logic [3:0] bcd1, bcd2, bcd3, bcd4, bcd5, bcd6, bcd7, bcd8;
    
    unsigned_to_bcd result_to_bcd(
    .clk(clk),
    .reset(rst),
    .trigger(1'b1),        
    .in({2'b0, result}),     
    .idle(),               
    .bcd(bcd)          
    );
    
    assign bcd1 = bcd[3:0];
    assign bcd2 = bcd[7:4];
    assign bcd3 = bcd[11:8];
    assign bcd4 = bcd[15:12];
    assign bcd5 = bcd[19:16];
    assign bcd6 = bcd[23:20];
    assign bcd7 = bcd[27:24];
    assign bcd8 = bcd[31:28];
    
    BCD_to_sevenSeg u_seg0(.BCD_in(bcd1), .sevenSeg(seg0));
    BCD_to_sevenSeg u_seg1(.BCD_in(bcd2), .sevenSeg(seg1));
    BCD_to_sevenSeg u_seg2(.BCD_in(bcd3), .sevenSeg(seg2));
    BCD_to_sevenSeg u_seg3(.BCD_in(bcd4), .sevenSeg(seg3));
    BCD_to_sevenSeg u_seg4(.BCD_in(bcd5), .sevenSeg(seg4));
    BCD_to_sevenSeg u_seg5(.BCD_in(bcd6), .sevenSeg(seg5));
    BCD_to_sevenSeg u_seg6(.BCD_in(bcd7), .sevenSeg(seg6));
    BCD_to_sevenSeg u_seg7(.BCD_in(bcd8), .sevenSeg(seg7));
endmodule
