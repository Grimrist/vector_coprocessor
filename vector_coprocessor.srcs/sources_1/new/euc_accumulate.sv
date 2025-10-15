`timescale 1ns / 1ps

module euc_accumulate (
    input  logic [9:0]  in_A, in_B,
    input  logic [29:0] in_res,
    input  logic        enable,
    output logic [29:0] out
);

    logic [19:0] diff;  
    logic [39:0] diff_sq;

    assign diff    = (in_A > in_B) ? (in_A - in_B) : (in_B - in_A);
    assign diff_sq = diff * diff;

    assign out = in_res + (enable ? diff_sq[29:0] : 30'b0);

endmodule
