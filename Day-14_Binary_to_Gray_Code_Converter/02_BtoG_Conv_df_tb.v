`timescale 1ns / 1ps

module btog_conv_df_tb;
    reg [3:0] bin;
    wire [3:0] gray;

    btog_conv_df uut (.bin(bin), .gray(gray));

    initial begin
        bin = 4'b0000; #10;
        bin = 4'b0001; #10;
        bin = 4'b0010; #10;
        bin = 4'b0011; #10;
        bin = 4'b0100; #10;
        bin = 4'b0101; #10;
        bin = 4'b0110; #10;
        bin = 4'b0111; #10;
        bin = 4'b1000; #10;
        bin = 4'b1111; #10;
        $finish;
    end

endmodule