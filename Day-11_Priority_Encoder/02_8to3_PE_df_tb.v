`timescale 1ns / 1ps

module encoder_8to3_df_tb;
    reg [7:0] in;
    wire [2:0] out;

    priority_encoder_8to3_df uut (.in(in), .out(out));

    initial begin
        in = 8'b00000001; #10; // Output should be 000
        in = 8'b00000010; #10; // Output should be 001
        in = 8'b00000100; #10; // Output should be 010
        in = 8'b00001000; #10; // Output should be 011
        in = 8'b00010000; #10; // Output should be 100
        in = 8'b00100000; #10; // Output should be 101
        in = 8'b01000000; #10; // Output should be 110
        in = 8'b10000000; #10; // Output should be 111
        in = 8'b00000000; #10; // Invalid input case

        $finish;
    end

endmodule