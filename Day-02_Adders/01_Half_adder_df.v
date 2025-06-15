`timescale 1ns / 1ps
// File: half_adder_df.v

module ha_df(
    input  wire a,
    input  wire b,
    output wire sum,
    output wire carry
);
    assign sum   = a ^ b;
    assign carry = a & b;
endmodule