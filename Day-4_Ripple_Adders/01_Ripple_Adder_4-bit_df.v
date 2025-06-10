`timescale 1ns / 1ps

module ripple_adder_df(
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] sum,
    output       cout
);

    wire c1, c2, c3;

    // Full Adder 1
    assign sum[0] = a[0] ^ b[0] ^ cin;
    assign c1     = (a[0] & b[0]) | (cin & (a[0] ^ b[0]));

    // Full Adder 2
    assign sum[1] = a[1] ^ b[1] ^ c1;
    assign c2     = (a[1] & b[1]) | (c1 & (a[1] ^ b[1]));

    // Full Adder 3
    assign sum[2] = a[2] ^ b[2] ^ c2;
    assign c3     = (a[2] & b[2]) | (c2 & (a[2] ^ b[2]));

    // Full Adder 4
    assign sum[3] = a[3] ^ b[3] ^ c3;
    assign cout   = (a[3] & b[3]) | (c3 & (a[3] ^ b[3]));

endmodule