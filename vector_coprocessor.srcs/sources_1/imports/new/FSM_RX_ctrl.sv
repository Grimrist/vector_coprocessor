`timescale 1ns / 1ps
module FSM_RX_ctrl #(
    parameter MEMORY_DEPTH = 1024
)(
    input  logic clk,
    input  logic rst,          // Reset general
    input  logic rx_ready,     // Indica que llega un nuevo dato
    input  logic [9:0] rx_data,
    input  logic rst_addr,     // Reset de dirección externa
    output logic enable,       // Señal para el bloque siguiente
    output logic write_enable, // Escritura a memoria
    output logic [$clog2(MEMORY_DEPTH)-1:0] write_address,
    output logic [9:0] write_data
);

    // ------------------------------------------------------------
    // Señales internas
    // ------------------------------------------------------------
    enum logic [1:0] {READ_BYTE, WRITE_BYTE} state, state_next;
    logic [$clog2(MEMORY_DEPTH)-1:0] write_address_next;
    logic [9:0] rx_data_reg;

    // ------------------------------------------------------------
    // Registro del dato recibido (evita desfase con write_enable)
    // ------------------------------------------------------------
    always_ff @(posedge clk) begin
        if (rst)
            rx_data_reg <= '0;
        else if (rx_ready)
            rx_data_reg <= rx_data;
    end

    assign write_data = rx_data_reg;

    // ------------------------------------------------------------
    // Máquina de estados
    // ------------------------------------------------------------
    always_ff @(posedge clk) begin
        if (rst) begin
            state <= READ_BYTE;
            write_address <= '0;
        end else begin
            state <= state_next;
            write_address <= write_address_next;
        end
    end

    always_comb begin
        // Valores por defecto
        state_next   = state;
        write_enable = 1'b0;
        enable       = 1'b0;

        case (state)
            READ_BYTE: begin
                if (rx_ready)
                    state_next = WRITE_BYTE;
            end

            WRITE_BYTE: begin
                write_enable = 1'b1;
                enable       = 1'b1;
                state_next   = READ_BYTE;
            end
        endcase
    end

    // ------------------------------------------------------------
    // Lógica de dirección de escritura
    // (independiente de write_enable, como pediste)
    // ------------------------------------------------------------
    always_comb begin
        // Mantiene la dirección por defecto
        write_address_next = write_address;

        // Reinicio de dirección si se llega al final o se activa rst_addr
        if (write_address == (MEMORY_DEPTH) || rst_addr)
            write_address_next = '0;

        // Incremento solo cuando se escribe
        else if (write_enable)
            write_address_next = write_address + 1;
    end

endmodule
