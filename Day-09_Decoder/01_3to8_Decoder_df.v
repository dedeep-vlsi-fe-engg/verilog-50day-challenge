`timescale 1ns / 1ps

module decoder_3to8_df(
    input  [2:0] in,
    input        en,
    output [7:0] out
);

    assign out = (en) ? (1 << in) : 8'b00000000;

endmodule