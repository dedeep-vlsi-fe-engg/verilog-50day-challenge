`timescale 1ns / 1ps

module rng_tb;
    reg clk = 0;
    reg rst;
    reg enable;
    wire [3:0] digit;

    rng uut (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .digit(digit)
    );

    // Clock generator
    always #5 clk = ~clk;  // 10ns clock

    initial begin
        $display("Starting Random Digit Generator Simulation");
        rst = 1; enable = 0;
        #10;
        rst = 0; enable = 1;

        repeat (20) begin
            #10;
            $display("Random Digit: %d", digit);
        end

        $stop;
    end

endmodule