`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2025 01:15:05 AM
// Design Name: 
// Module Name: processing_core
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


module processing_core 
#(parameter MAX_ADDR = 1024)
(
    input logic clk, rst, cmd_ready, splitter_busy,
    input logic [2:0] cmd,
    input logic [9:0] bram_out_A, bram_out_B,
    output logic bram_enable, data_ready,
    output logic [9:0] bram_addr,
    output logic [9:0] result
);
    
processing_core_fsm #(.MAX_ADDR(MAX_ADDR)) ProcessingCoreFSM (
    .clk(clk),
    .rst(rst),
    .cmd_ready(cmd_ready),
    .cmd(cmd),
    .splitter_busy(splitter_busy),
    .data_ready(data_ready),
    .bram_enable(bram_enable),
    .addr(bram_addr)
);

// Operation modules
logic [9:0] out_read, out_sum, out_avg, out_euc, out_man, out_dot;

read_vec ReadVec(
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .out(out_read)
);

sum_vec SumVec(
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .out(out_sum)
);

avg_vec AvgVec(
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .out(out_avg)
);

euc_dist EucDist(
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .out(out_euc)
);

man_dist ManDist(
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .out(out_man)
);

dot_prod DotProd(
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .out(out_dot)
);

// Mux to select which result to push to UART
always_comb begin
    case (cmd)
        3'd0: result = out_read;
        3'd1: result = out_sum;
        3'd2: result = out_avg;
        3'd3: result = out_euc;        
        3'd4: result = out_man;
        3'd5: result = out_dot;
        default: result = out_sum;    
    endcase
end

endmodule
