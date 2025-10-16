`timescale 1ns / 1ps

module euc_dist (
    input logic clk, rst,
    input  logic [9:0]  in_A, in_B,
    input  logic [29:0] in_res,
    output logic [29:0] out
);

logic [19:0] diff;  
logic [29:0] diff_sq, diff_reg, diff_sq_reg;

assign diff    = (in_A > in_B) ? (in_A - in_B) : (in_B - in_A);

always_ff @(posedge clk) begin
    if (rst)
        diff_reg <= 'b0;
    else
        diff_reg <= diff;
end

assign diff_sq = diff_reg * diff_reg;

always_ff @(posedge clk) begin
    if (rst)
        diff_sq_reg <= 'b0;
    else
        diff_sq_reg <= diff_sq;
end

assign out = in_res + diff_sq_reg;

endmodule
