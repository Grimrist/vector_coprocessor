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
// 
//////////////////////////////////////////////////////////////////////////////////

module processing_core 
#(parameter MAX_ADDR = 1024)
(
    input  logic clk, rst, cmd_ready, splitter_busy, bram_sel, out_mode, sqrt_res,
    input  logic [1:0] cmd,
    input  logic [9:0] bram_out_A, bram_out_B,
    output logic bram_enable, data_ready,
    output logic [$clog2(MAX_ADDR)-1:0] bram_addr,
    output logic [29:0] result_out
);

logic store_res;
logic proc_ready;
logic [29:0] result, result_reg, result_sqrt;
logic done;

processing_core_fsm #(.MAX_ADDR(MAX_ADDR)) ProcessingCoreFSM (
    .clk(clk),
    .rst(rst),
    .cmd_ready(cmd_ready),
    .splitter_busy(splitter_busy),
    .data_ready(proc_ready),
    .bram_enable(bram_enable),
    .addr(bram_addr),
    .store_res(store_res),
    .out_mode(out_mode)
);

// Operaciones
logic [9:0] out_read, out_avg;
logic [10:0] out_sum; 
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
    .rst(cmd_ready),
    .in_A(bram_out_A),
    .in_B(bram_out_B),
    .in_res(result_reg),
    .out(out_euc)
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

// Mux de salida (UART / result_reg)
always_comb begin
    if (out_mode == 0)
        case (cmd)
            2'd1: result = {20'b0, out_read};
            2'd2: result = {19'b0, out_sum};
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

// Registro de salida
always_ff @(posedge clk) begin
    if (rst)
        result_reg <= 30'b0;
    else if (cmd_ready)
        result_reg <= 30'b0;
    else if (store_res)
        result_reg <= result;
end

//cordic_sqrt cordic_sqrt(
//    .clk(clk),
//    .start(proc_ready),
//    .in_val(result_reg),
//    .out_val(result_sqrt),
//    .done(cordic_ready)
//);


non_restoring_sqrt #(
    .N(30)   
) non_restoring_sqrt (
    .Clock(clk),               
    .reset(rst),
    .enable(proc_ready),      
    .num_in(result_reg),     
    .sq_root(result_sqrt),   
    .done(cordic_ready)      
);


always_comb begin
    if (sqrt_res)
        result_out = result_sqrt;
    else
        result_out = result_reg;
end

always_comb begin
    if (sqrt_res)
        data_ready = cordic_ready;
    else
        data_ready = proc_ready;
end

endmodule
