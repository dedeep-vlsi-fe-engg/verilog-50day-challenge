`timescale 1ns / 1ps

module pwmg_tb;
    reg clk = 0;
    reg rst;
    reg [7:0] duty_cycle;
    wire pwm_out;

    pwmg uut (
        .clk(clk),
        .rst(rst),
        .duty_cycle(duty_cycle),
        .pwm_out(pwm_out)
    );

    // Generate clock (10ns period)
    always #5 clk = ~clk;

    initial begin
        rst = 1; duty_cycle = 0;
        #20 rst = 0;

        // Sweep duty cycles
        #100 duty_cycle = 50; // 50% duty cycle
        #100 duty_cycle = 128; // ~50% in 8-bit
        #100 duty_cycle = 200; // ~78%
        #100 duty_cycle = 30;  // ~12%
        #100 $finish;
    end

endmodule