`timescale 1ns / 1ps

module bcd_adder_df(
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] sum,
    output [3:0] bcd_sum,
    output       cout
);

    wire [4:0] temp_sum;
    wire       carry_correction;

    assign temp_sum = a + b + cin;

    // BCD correction condition: sum > 9
    assign carry_correction = (temp_sum > 9) ? 1 : 0;

    assign sum     = temp_sum[3:0];
    assign bcd_sum = (carry_correction) ? (temp_sum + 6) : temp_sum;
    assign cout    = carry_correction;

endmodule