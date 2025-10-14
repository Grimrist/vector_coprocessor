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
    input logic clk, rst, cmd_ready, splitter_busy, bram_sel, out_mode,
    input logic [1:0] cmd,
    input logic [9:0] bram_out_A, bram_out_B,
    output logic bram_enable, data_ready,
    output logic [$clog2(MAX_ADDR)-1:0] bram_addr,
    output logic [29:0] result_reg,
    output logic [10:0] proc_core_state
);

logic store_res;
logic [29:0] result;
logic done;

processing_core_fsm #(.MAX_ADDR(MAX_ADDR)) ProcessingCoreFSM (
    .clk(clk),
    .rst(rst),
    .cmd_ready(cmd_ready),
    .splitter_busy(splitter_busy),
    .data_ready(data_ready),
    .bram_enable(bram_enable),
    .addr(bram_addr),
    .proc_core_state(proc_core_state),
    .store_res(store_res),
    .out_mode(out_mode)
);

// Operation modules
logic [9:0] out_read, out_sum, out_avg; 
logic [29:0] out_euc, out_man, out_dot;

read_vec ReadVec (
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .sel(bram_sel),
    .out(out_read)
);

sum_vec SumVec (
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .out(out_sum)
);

avg_vec AvgVec (
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .out(out_avg)
);

euc_dist EucDist (
    .clk(clk),
    .data_ready(data_ready),
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .in_res(result_reg),
    .out(out_euc),
    .done(done)
);

man_dist ManDist (
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .in_res(result_reg),
    .out(out_man)
);

dot_prod DotProd (
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .in_res(result_reg),
    .out(out_dot)
);

// Mux to select which result to push to UART
always_comb begin
    if (out_mode == 0)
        case (cmd)
            2'd1: result = {20'b0, out_read};
            2'd2: result = {20'b0, out_sum};
            2'd3: result = {20'b0, out_avg};
            default: result = {20'b0, out_read};    
        endcase
    else
        case (cmd)
            2'd1: result = out_euc;        
            2'd2: result = out_man;
            2'd3: result = out_dot;
            default: result = out_dot;
        endcase
end

// FF to hold scalar operation result
always_ff @(posedge clk) begin
    if (cmd_ready)
        result_reg <= 'b0;
    else if (store_res)
        result_reg <= result;
end

endmodule
