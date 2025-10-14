`timescale 1ns / 1ps
module euc_sqrt (
    input  logic        clk,
    input  logic        start,       // se activa con data_ready
    input  logic [29:0] in_val,
    output logic [29:0] out_val,
    output logic        done
);

    // Señales internas
    logic [31:0] cordic_out;
    logic        cordic_valid;

    // Instancia del IP 
    cordic_0 cordic_inst (
        .aclk(clk),
        .s_axis_cartesian_tvalid(start),
        .s_axis_cartesian_tdata(in_val),
        .m_axis_dout_tvalid(cordic_valid),
        .m_axis_dout_tdata(cordic_out)
    );

    assign out_val = cordic_out[29:0];
    assign done    = cordic_valid;
endmodule
