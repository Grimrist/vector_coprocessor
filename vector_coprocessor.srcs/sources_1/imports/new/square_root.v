module square_root
    #(parameter N = 30)
    (
        input  Clock,              // Clock
        input  reset,              // Asynchronous active high reset
        input  enable,             // Inicia el cálculo
        input  [N-1:0] num_in,     // Número de entrada
        output reg done,           // Pulso alto un ciclo cuando termina
        output reg [N/2-1:0] sq_root // Raíz cuadrada
    );

    reg [N-1:0] a;
    reg [N/2+1:0] left, right;
    reg signed [N/2+1:0] r;
    reg [N/2-1:0] q;
    integer i;
    reg busy;

    always @(posedge Clock or posedge reset)
    begin
        if (reset) begin
            done    <= 0;
            sq_root <= 0;
            i       <= 0;
            a       <= 0;
            left    <= 0;
            right   <= 0;
            r       <= 0;
            q       <= 0;
            busy    <= 0;
        end 
        else begin
            //  Clear de done por defecto (solo se mantiene un ciclo)
            done <= 0;

            if (enable && !busy) begin
                // Inicia el cálculo
                busy   <= 1;
                a      <= num_in;
                i      <= 1;
                left   <= 0;
                right  <= 0;
                r      <= 0;
                q      <= 0;
            end
            else if (busy) begin
                // Algoritmo principal
                if (i < N/2 + 1) begin
                    right = {q, r[N/2+1], 1'b1};
                    left  = {r[N/2-1:0], a[N-1:N-2]};
                    a     = {a[N-3:0], 2'b0};
                    if (r[N/2+1])
                        r = left + right;
                    else
                        r = left - right;
                    q = {q[N/2-2:0], ~r[N/2+1]};
                    i = i + 1;
                end 
                else begin
                    // Finaliza el cálculo
                    sq_root <= q;
                    done    <= 1;   //  Pulso de 1 ciclo
                    busy    <= 0;
                    i       <= 0;
                end
            end
        end
    end

endmodule
