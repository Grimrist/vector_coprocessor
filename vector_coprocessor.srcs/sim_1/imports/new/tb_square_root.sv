`timescale 1ns/1ps

module tb_square_root;

    // Parámetro del diseño
    localparam N = 30;

    // Señales del DUT
    logic Clock;
    logic reset;
    logic enable;
    logic [N-1:0] num_in;
    logic done;
    logic [N/2-1:0] sq_root;

    // Instancia del DUT
    non_restoring_sqrt #(.N(N)) dut (
        .Clock(Clock),
        .reset(reset),
        .enable(enable),
        .num_in(num_in),
        .done(done),
        .sq_root(sq_root)
    );

    always #5 Clock = ~Clock;
    initial begin
        Clock = 0;
        reset = 1;
        enable = 0;
        num_in = 0;
        #20;
        reset = 0;
        
        #20;
        num_in=32'd1073741823;
        #10
        enable=1;
        #10
        enable=0;
        
        
        
//        test_sqrt(32'd0);
//        test_sqrt(32'd1);
//        test_sqrt(32'd4);
//        test_sqrt(32'd9);
//        test_sqrt(32'd16);
//        test_sqrt(32'd25);
//        test_sqrt(32'd1024);
//        test_sqrt(32'd1048576);
//        test_sqrt(32'd1073741823); 
    end

    task test_sqrt(input [N-1:0] value);
        begin
            // Asegura que num_in cambie antes del enable
            @(negedge Clock);
            num_in <= value;
    
            // Pulso de enable alineado al flanco positivo
            @(posedge Clock);
            enable <= 1;
            @(posedge Clock);
            enable <= 0;
    
            // Espera al done
            wait(done);
            @(posedge Clock);
            $display("[%0t ns] num_in=%0d -> sq_root=%0d", $time, num_in, sq_root);
            @(negedge done);
            #10;
        end
    endtask


endmodule
