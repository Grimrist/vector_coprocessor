`timescale 1ns / 1ps

module vector_coprocessor 
#(parameter BRAM_DEPTH = 1024) (
    input logic clk, rst, cmd_ready,
    input logic [2:0] cmd_out,
    output logic tx
);

logic clka, clkb;

clk_wiz_0 clk_src(
    .clk_in1(clk),
    .reset(rst),
    .clka(clka),
    .clkb(clkb)
);

logic [9:0] addra, addrb, dina;
logic enb;

logic [9:0] doutb_A, doutb_B;
logic ena_A, ena_B;
logic wea_A, wea_B;

blk_mem_gen_0 BRAM_Vector_A (
    .clka(clka),
    .clkb(clkb),
    .addra(addra),
    .addrb(addrb),
    .dina(dina),
    .doutb(doutb_A),
    .ena(ena_A),
    .enb(enb),
    .wea(wea_A)
);

blk_mem_gen_0 BRAM_Vector_B (
    .clka(clka),
    .clkb(clkb),
    .addra(addra),
    .addrb(addrb),
    .dina(dina),
    .doutb(doutb_B),
    .ena(ena_B),
    .enb(enb),
    .wea(wea_B)
);

logic tx_start, tx_busy, splitter_busy;
logic [9:0] result;
logic [7:0] tx_data;

processing_core #(.MAX_ADDR(BRAM_DEPTH)) Processing_Core(
    .clk(clkb), 
    .rst(rst),
    .cmd(cmd_out),
    .cmd_ready(cmd_ready),
    .bram_out_A(doutb_A), 
    .bram_out_B(doutb_B),
    .bram_enable(enb),
    .bram_addr(addrb),
    .result(result),
    .splitter_busy(splitter_busy),
    .data_ready(data_ready)
);

tx_splitter_fsm splitter(
    .clk(clkb),
    .rst(rst),
    .data_ready(data_ready),
	.data_sel(data_sel), 
	.tx_busy(tx_busy),
	.tx_start(tx_start),
	.splitter_busy(splitter_busy)
);

// Mux to pick between LSB and MSB
always_comb begin
    if (data_sel == 0)
        tx_data = result[7:0];
    else
        tx_data = {6'b0, result[9:8]};
end

top_uart_tx UART_TX(
    .clk(clkb),
    .reset(rst),
    .tx(tx),
    .tx_start(tx_start),
    .tx_data(tx_data),
    .tx_busy(tx_busy)
);

endmodule
