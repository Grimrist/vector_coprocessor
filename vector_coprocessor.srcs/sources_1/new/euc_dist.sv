`timescale 1ns / 1ps

module euc_dist (
    input  logic        clk,
    input  logic        data_ready,  
    input  logic [9:0]  in_A, in_B,
    input  logic [29:0] in_res,
    output logic [29:0] out,
    output logic        done
);

    logic [29:0] acc_out, acc_reg;
    logic        acc_enable;

    assign acc_enable = ~data_ready;

    // Acumulador
    euc_accumulate euc_accumulate (
        .in_A(in_A),
        .in_B(in_B),
        .in_res(in_res),
        .enable(acc_enable),
        .out(acc_out)
    );

    // Registrar el valor acumulado final
    always_ff @(posedge clk)
        if (data_ready)
            acc_reg <= acc_out;

    // CORDIC sqrt (ajustado a 30 bits)
    euc_sqrt euc_sqrt (
        .clk(clk),
        .start(data_ready),
        .in_val(acc_reg),
        .out_val(out),
        .done(done)
    );

endmodule
