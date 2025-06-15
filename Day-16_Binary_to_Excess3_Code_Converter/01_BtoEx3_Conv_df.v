`timescale 1ns / 1ps

module btoex3_conv_df(
    input [3:0] bin,
    output [3:0] excess3
);

// Add 3 to binary input to get Excess-3
assign excess3 = bin + 4'b0011;

endmodule