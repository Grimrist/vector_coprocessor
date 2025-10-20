`timescale 1ns / 1ps

module vector_coprocessor 
#(parameter MEMORY_DEPTH = 1024) (
    input logic clk, rst_n, rx,
    output logic tx,
    output logic [6:0]  segments,    
    output logic [7:0]  anodes
);

assign JC = rx;
assign rst = ~rst_n;

// Clocks used for design
logic clka, clkb, clkc;

clk_wiz_0 clk_src(
    .clk_in1(clk),
    .reset(rst),
    .clka(clka),
    .clkb(clkb),
    .clkc(clkc),
    .locked()
);

// BRAM instances
logic [$clog2(MEMORY_DEPTH)-1:0] addra_a, addra_b, addrb;
logic [9:0] dina_a, dina_b;
logic enb;

logic [9:0] doutb_a, doutb_b;
logic ena_a, ena_b;
logic wea_a, wea_b;
logic rsta_a, rsta_b;

blk_mem_gen_0 BRAM_Vector_A (
    .clka(clka),
    .clkb(clkb),
    .addra(addra_a),
    .addrb(addrb),
    .dina(dina_a),
    .douta(),
    .doutb(doutb_a),
    .ena(ena_a),
    .enb(enb),
    .wea(wea_a),
    .rsta(rsta_a),
    .web('0),
    .dinb('0),
    .rsta_busy(),
    .rstb_busy()
);

blk_mem_gen_0 BRAM_Vector_B (
    .clka(clka),
    .clkb(clkb),
    .addra(addra_b),
    .addrb(addrb),
    .dina(dina_b),
    .douta(),
    .doutb(doutb_b),
    .ena(ena_b),
    .enb(enb),
    .wea(wea_b),
    .rsta(rsta_b),
    .web('0),
    .dinb('0),
    .rsta_busy(),
    .rstb_busy()
);

// UART RX Logic
logic flag_command, flag_write;
logic [7:0] rx_data;

uart_rx_logic #(
    .CLK_FREQUENCY(100_000_000),
    .BAUD_RATE(115200),
    .MEMORY_DEPTH(MEMORY_DEPTH)
) UART_RX_Logic (
    .clk(clka), 
    .rst, 
    .rx,
    .ena_a, 
    .wea_a, 
    .rsta_a,
    .addra_a,
    .dina_a,
    .ena_b, 
    .wea_b, 
    .rsta_b,
    .addra_b,
    .dina_b,
    .flag_command,
    .flag_write,
    .rx_data
);

// Command block
logic bram_sel, reset_res, out_mode, sqrt_res, disable_screen;
logic [1:0] cmd;
logic [1:0] max_pck;

command_block Command_Block (
    .clk(clkb), 
    .rx_data(rx_data[3:0]),
    .flag_command, 
    .flag_write,
    .cmd,
    .bram_sel,
    .cmd_ready,
    .max_pck,
    .out_mode,
    .sqrt_res,
    .disable_screen
);

// Processing core
logic tx_start, tx_busy, splitter_busy;
logic [29:0] result;
logic [7:0] tx_data;
logic [10:0] proc_core_state;
logic [1:0] data_sel;

processing_core #(.MAX_ADDR(MEMORY_DEPTH)) Processing_Core (
    .clk(clkb), 
    .rst(rst),
    .cmd(cmd),
    .bram_sel(bram_sel),
    .cmd_ready(cmd_ready),
    .bram_out_A(doutb_a), 
    .bram_out_B(doutb_b),
    .bram_enable(enb),
    .bram_addr(addrb),
    .result_out(result),
    .splitter_busy(splitter_busy),
    .data_ready(data_ready),
    .out_mode(out_mode),
    .sqrt_res(sqrt_res)
);

tx_splitter_new splitter (
    .clk(clkc),
    .rst(rst),
    .data_ready(data_ready),
	.data_sel(data_sel), 
	.max_pck(max_pck),
	.tx_busy(tx_busy),
	.tx_start(tx_start),
	.splitter_busy(splitter_busy)
);

// Mux to pick which part of result to send
always_comb begin
    case (data_sel)
        'd0: tx_data = result[7:0];
        'd1: tx_data = result[15:8];
        'd2: tx_data = result[23:16];
        'd3: tx_data = {2'b0, result[29:24]};
    endcase
end

logic [6:0] segments_out;

display_top display_top (
    .clk(clkc),
    .rst(rst),
    .result(result),
    .segments(segments_out),
    .out_mode(out_mode),
    .cmd_ready(cmd_ready),
    .data_ready(data_ready),
    .disable_screen(disable_screen),
    .anodes(anodes)
);

assign segments = ~segments_out;

top_uart_tx #(
    .CLK_FREQUENCY(100_000_000),
    .BAUD_RATE(115200) 
) UART_TX (
    .clk(clkc),
    .reset(rst),
    .tx(tx),
    .tx_start(tx_start),
    .tx_data(tx_data),
    .tx_busy(tx_busy)
);

endmodule
