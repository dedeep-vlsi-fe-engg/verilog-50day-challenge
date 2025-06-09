`timescale 1ns / 1ps

module fs_df(
    input a,
    input b,
    input bin,
    output diff,
    output borrow
);

assign diff = a ^ b ^ bin;
assign borrow = (~a & b) | ((~(a ^ b)) & bin);

endmodule