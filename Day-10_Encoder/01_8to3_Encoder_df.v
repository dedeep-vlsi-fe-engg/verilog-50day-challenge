`timescale 1ns / 1ps

module encoder_8to3_df(
    input  [7:0] in,
    output [2:0] out
);

    assign out[2] = in[4] | in[5] | in[6] | in[7];
    assign out[1] = in[2] | in[3] | in[6] | in[7];
    assign out[0] = in[1] | in[3] | in[5] | in[7];

endmodule