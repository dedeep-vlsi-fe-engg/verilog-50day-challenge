`timescale 1ns / 1ps

module pwmg(
    input clk,
    input rst,
    input [7:0] duty_cycle,  // Duty cycle: 0–100 (%)
    output reg pwm_out
);

    parameter PERIOD = 255;
    reg [7:0] counter;

    always @(posedge clk or posedge rst) begin
        if (rst)
            counter <= 0;
        else
            counter <= (counter == PERIOD) ? 0 : counter + 1;
    end

    always @(posedge clk or posedge rst) begin
        if (rst)
            pwm_out <= 0;
        else
            pwm_out <= (counter < duty_cycle) ? 1 : 0;
    end

endmodule