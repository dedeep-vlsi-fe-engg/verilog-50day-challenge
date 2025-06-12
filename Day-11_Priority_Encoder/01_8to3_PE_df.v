`timescale 1ns / 1ps

module priority_encoder_8to3_df(
    input  [7:0] in,
    output [2:0] out
);

    assign out = (in[7]) ? 3'd7 :
                 (in[6]) ? 3'd6 :
                 (in[5]) ? 3'd5 :
                 (in[4]) ? 3'd4 :
                 (in[3]) ? 3'd3 :
                 (in[2]) ? 3'd2 :
                 (in[1]) ? 3'd1 :
                 (in[0]) ? 3'd0 : 3'dx; // x for invalid input (all 0s)

endmodule