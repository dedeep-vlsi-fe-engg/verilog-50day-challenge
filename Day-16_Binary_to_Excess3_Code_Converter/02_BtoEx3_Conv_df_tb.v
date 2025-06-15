`timescale 1ns / 1ps

module btoex3_conv_df_tb;
reg [3:0] bin;
wire [3:0] excess3;

btoex3_conv_df uut (.bin(bin), .excess3(excess3));

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
    bin = 4'b1001; #10;

    $finish;
end

endmodule