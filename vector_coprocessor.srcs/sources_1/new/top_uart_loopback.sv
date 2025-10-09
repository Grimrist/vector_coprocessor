`timescale 1ns / 1ps

module top_uart_loopback #(
    parameter int CLK_FREQUENCY = 100_000_000,
    parameter int BAUD_RATE     = 115200
)(
    input  logic clk,
    input  logic reset,  // activo en bajo desde el botón
    input  logic rx,     // UART RX desde PC
    output logic tx      // UART TX hacia PC
);

    // Señal de reset negada (activo en alto internamente)
    logic reset_n;
    assign reset_n = ~reset;

    // Señales RX
    logic [7:0] rx_data;
    logic       rx_ready;

    // Señales TX
    logic [7:0] tx_data;
    logic       tx_start;
    logic       tx_busy;

    // Instancia del receptor UART
    top_uart_rx #(
        .CLK_FREQUENCY(CLK_FREQUENCY),
        .BAUD_RATE(BAUD_RATE)
    ) uart_rx_inst (
        .clk(clk),
        .reset(reset_n),  // reset activo en alto dentro del módulo
        .rx(rx),
        .rx_data(rx_data),
        .rx_ready(rx_ready)
    );

    // Instancia del transmisor UART
    top_uart_tx #(
        .CLK_FREQUENCY(CLK_FREQUENCY),
        .BAUD_RATE(BAUD_RATE)
    ) uart_tx_inst (
        .clk(clk),
        .reset(reset_n),  // reset activo en alto dentro del módulo
        .tx(tx),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_busy(tx_busy)
    );

    // Lógica de loopback
    always_ff @(posedge clk) begin
        if (reset_n) begin
            tx_data  <= '0;
            tx_start <= 1'b0;
        end else begin
            tx_start <= 1'b0;
            if (rx_ready && !tx_busy) begin
                tx_data  <= rx_data;
                tx_start <= 1'b1;
            end
        end
    end

endmodule


