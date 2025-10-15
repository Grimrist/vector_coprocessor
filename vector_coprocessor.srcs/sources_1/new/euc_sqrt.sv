`timescale 1ns / 1ps

module cordic_sqrt (
    input  logic        clk,
    input  logic        start,
    input  logic [29:0] in_val,
    output logic [29:0] out_val,
    output logic        done
);

    // Señales de conexión al CORDIC
    logic [31:0] cordic_in;
    logic [15:0] cordic_out;
    logic        cordic_valid;

    // Extiende el valor de entrada a 32 bits (padding con ceros)
    assign cordic_in = {2'b00, in_val};

    // Instancia del IP
    cordic_0 cordic_inst (
        .aclk(clk),
        .s_axis_cartesian_tvalid(start),
        .s_axis_cartesian_tdata(cordic_in),
        .m_axis_dout_tvalid(cordic_valid),
        .m_axis_dout_tdata(cordic_out)
    );

    // Amplía la salida del CORDIC a 30 bits
    assign out_val = {14'b0, cordic_out};  // padding superior con ceros
    assign done    = cordic_valid;

endmodule
