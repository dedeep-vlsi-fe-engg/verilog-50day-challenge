`timescale 1ns / 1ps

module encoder_8to3_df_tb;
    reg [7:0] in;
    wire [2:0] out;

    encoder_8to3_df uut (.in(in), .out(out));

    initial begin
        in = 8'b00000001; #10; // Expected output: 000
        in = 8'b00000010; #10; // Expected output: 001
        in = 8'b00000100; #10; // Expected output: 010
        in = 8'b00001000; #10; // Expected output: 011
        in = 8'b00010000; #10; // Expected output: 100
        in = 8'b00100000; #10; // Expected output: 101
        in = 8'b01000000; #10; // Expected output: 110
        in = 8'b10000000; #10; // Expected output: 111
        $finish;
    end

endmodule