`timescale 1ns / 1ps

module sqrt_newton
#(
    parameter WIDTH = 30,     // Ancho de datos
    parameter ITER  = 60      // Número de iteraciones
)
(
    input  logic             clk,
    input  logic             rst,
    input  logic             start,
    input  logic [WIDTH-1:0] in_val,
    output logic [WIDTH-1:0] out_val,
    output logic             done
);

    localparam ITER_WIDTH = $clog2(ITER + 1);  
    
    logic [WIDTH-1:0] a, a_next;
    logic [WIDTH-1:0] x_curr, x_next;
    logic [WIDTH-1:0] div_result, div_result_next;
    logic [WIDTH-1:0] out_val_next;
    logic [ITER_WIDTH-1:0] iter_cnt, iter_cnt_next;


    enum logic [1:0] {IDLE, RUN_DIV, RUN_ADD, DONE} CurrentState, NextState;

    always_ff @(posedge clk) begin
        if (rst) begin
            CurrentState   <= IDLE;
            a              <= 0;
            x_curr         <= 0;
            div_result     <= 0;
            iter_cnt       <= 0;
            out_val        <= 0;
        end
        else begin
            CurrentState   <= NextState;
            a              <= a_next;
            x_curr         <= x_next;
            div_result     <= div_result_next;
            iter_cnt       <= iter_cnt_next;
            out_val        <= out_val_next;
        end
    end


    always_comb begin
        NextState        = CurrentState;
        done             = 0;
        a_next           = a;
        x_next           = x_curr;
        div_result_next  = div_result;
        iter_cnt_next    = iter_cnt;
        out_val_next     = out_val;

        case (CurrentState)

            IDLE: begin
                if (start) begin
                    NextState     = RUN_DIV;
                    a_next        = in_val;
                    x_next        = in_val >> 1;   // aproximación inicial
                    iter_cnt_next = 0;
                end
            end

            //--------------------------------------------------
            // RUN_DIV: realiza solo la división a/x_curr
            //--------------------------------------------------
            RUN_DIV: begin
                if (x_curr != 0)
                    div_result_next = a / x_curr;
                else
                    div_result_next = 1;  // evitar división por cero

                NextState = RUN_ADD;
            end

            //--------------------------------------------------
            // RUN_ADD: calcula (x_curr + div_result)/2
            //--------------------------------------------------
            RUN_ADD: begin
                x_next        = (x_curr + div_result) >> 1;
                iter_cnt_next = iter_cnt + 1;

                if (iter_cnt_next >= ITER)
                    NextState = DONE;
                else
                    NextState = RUN_DIV; // siguiente iteración
            end

            //--------------------------------------------------
            // DONE
            //--------------------------------------------------
            DONE: begin
                done         = 1;
                out_val_next = x_curr;
                if (!start)
                    NextState = IDLE;
            end

            //--------------------------------------------------
            default: NextState = IDLE;
        endcase
    end

endmodule
