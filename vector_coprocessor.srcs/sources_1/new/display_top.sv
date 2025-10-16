`timescale 1ns / 1ps

module display_top (
    input  logic        clk,
    input  logic        rst,
    input  logic [29:0] result,
    input  logic        out_mode,   
    output logic [6:0]  segments,
    output logic [7:0]  anodes
);


  
    logic [6:0] seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7;
    
//    logic [6:0] segments_int;
//    logic [7:0] anodes_int;

    // Decoder
    result_decoder result_decoder (
        .clk(clk),
        .rst(rst),
        .result(result),
        .seg0(seg0),
        .seg1(seg1),
        .seg2(seg2),
        .seg3(seg3),
        .seg4(seg4),
        .seg5(seg5),
        .seg6(seg6),
        .seg7(seg7)
    );

    // Controller
    display_controller display_controller (
        .clk(clk),
        .rst(rst),
        .seg0(seg0),
        .seg1(seg1),
        .seg2(seg2),
        .seg3(seg3),
        .seg4(seg4),
        .seg5(seg5),
        .seg6(seg6),
        .seg7(seg7),
        .segments(segments),
        .anodes(anodes)
    );
    
//    always_comb begin
//        if (!out_mode) begin
//            segments = 7'b111_1111;   // todos los LEDs apagados
//            anodes   = 8'b1111_1111;  // todos desactivados
//        end else begin
//            segments = segments_int;
//            anodes   = anodes_int;
//        end
//    end
    
    

endmodule
