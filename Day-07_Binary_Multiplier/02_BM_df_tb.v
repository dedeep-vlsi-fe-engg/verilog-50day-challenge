`timescale 1ns / 1ps

module bm_df_tb;
    reg  [3:0] a, b;
    wire [7:0] product;

    bm_df uut (.a(a), .b(b), .product(product));

    initial begin
        // Apply different inputs
        a = 4'd3;  b = 4'd2;  #10;
        a = 4'd5;  b = 4'd4;  #10;
        a = 4'd9;  b = 4'd8;  #10;
        a = 4'd15; b = 4'd15; #10;
        a = 4'd7;  b = 4'd0;  #10;

        $finish;
    end

endmodule