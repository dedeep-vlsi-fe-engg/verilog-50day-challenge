`timescale 1ns / 1ps

module bm_df(
    input  [3:0] a,
    input  [3:0] b,
    output [7:0] product
);

    assign product = a * b;

endmodule