`timescale 1ns / 1ps

module decoder_3to8_df_tb;
    reg  [2:0] in;
    reg        en;
    wire [7:0] out;

    decoder_3to8_df uut (.in(in), .en(en), .out(out));

    initial begin
        en = 1'b0; in = 3'd0; #10;
        en = 1'b1;

        in = 3'd0; #10;
        in = 3'd1; #10;
        in = 3'd2; #10;
        in = 3'd3; #10;
        in = 3'd4; #10;
        in = 3'd5; #10;
        in = 3'd6; #10;
        in = 3'd7; #10;

        $finish;
    end

endmodule