`timescale 1ns / 1ps

module four_bit_mc_df(
    input  [3:0] a,
    input  [3:0] b,
    output       a_gt_b,
    output       a_eq_b,
    output       a_lt_b
);

    assign a_gt_b = (a > b) ? 1 : 0;
    assign a_eq_b = (a == b) ? 1 : 0;
    assign a_lt_b = (a < b) ? 1 : 0;

endmodule