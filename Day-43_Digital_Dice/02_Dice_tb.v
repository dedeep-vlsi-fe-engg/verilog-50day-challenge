`timescale 1ns/1ps

module dice_tb;
    reg clk, rst, roll;
    wire [2:0] dice;

    dice uut (.clk(clk), .rst(rst), .roll(roll), .dice(dice));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock
    end

    initial begin
        $display("Starting Dice Simulation");
        rst = 1; roll = 0;
        #10 rst = 0;

        repeat (10) begin
            #10 roll = 1;
            #10 roll = 0;
        end

        $finish;
    end

endmodule