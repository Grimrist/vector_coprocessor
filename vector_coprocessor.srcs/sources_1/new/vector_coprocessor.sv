`timescale 1ns / 1ps

module vector_coprocessor 
#(parameter MEMORY_DEPTH = 1024) (
    input logic clk, rst_n, rx,
    output logic tx, JC, JC_2
);

assign JC = rx;
assign rst = ~rst_n;

// Clocks used for design
logic clka, clkb;

clk_wiz_0 clk_src(
    .clk_in1(clk),
    .reset(rst),
    .clka(clka),
    .clkb(clkb)
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
    .doutb(doutb_a),
    .ena(ena_a),
    .enb(enb),
    .wea(wea_a),
    .rsta(rsta_a),
    .web('0),
    .dinb('0)
);

blk_mem_gen_0 BRAM_Vector_B (
    .clka(clka),
    .clkb(clkb),
    .addra(addra_b),
    .addrb(addrb),
    .dina(dina_b),
    .doutb(doutb_b),
    .ena(ena_b),
    .enb(enb),
    .wea(wea_b),
    .rsta(rsta_b),
    .web('0),
    .dinb('0)
);

// UART RX Logic
logic flag_command;
logic [7:0] rx_data;

uart_rx_logic #(
    .CLK_FREQUENCY(100_000_000),
    .BAUD_RATE(115200),
    .MEMORY_DEPTH(MEMORY_DEPTH)
) UART_RX_Logic (
    .clk, 
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
    .rx_data
);

// Command block
logic bram_sel, reset_res;
logic [2:0] cmd;
command_block Command_Block (
    .clk, 
    .rst,
    .rx_data(rx_data[3:0]),
    .flag_command, 
    .cmd,
    .bram_sel,
    .cmd_ready,
    .reset_res
);

// Processing core
logic tx_start, tx_busy, splitter_busy;
logic [9:0] result;
logic [7:0] tx_data;
logic [10:0] proc_core_state;

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
    .result(result),
    .splitter_busy(splitter_busy),
    .data_ready(data_ready),
    .proc_core_state(proc_core_state)
);

tx_splitter_fsm splitter (
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

top_uart_tx #(
    .CLK_FREQUENCY(100_000_000),
    .BAUD_RATE(115200) 
) UART_TX (
    .clk(clkb),
    .reset(rst),
    .tx(tx_wire),
    .tx_start(tx_start),
    .tx_data(tx_data),
    .tx_busy(tx_busy)
);

assign tx = tx_wire;
assign JC_2 = tx_wire;

// ILA 
ila_0 ila (
    .clk(clk),
    .probe0(rx_data),
    .probe1(splitter_busy),
    .probe2(proc_core_state),
    .probe3(addrb)
);

endmodule
