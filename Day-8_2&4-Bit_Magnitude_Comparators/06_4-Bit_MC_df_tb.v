`timescale 1ns / 1ps

module four_bit_mc_df_tb;
    reg [3:0] a, b;
    wire a_gt_b, a_eq_b, a_lt_b;

    // Change here for 2-bit or 4-bit test
    four_bit_mc_df uut (.a(a), .b(b), .a_gt_b(a_gt_b), .a_eq_b(a_eq_b), .a_lt_b(a_lt_b));

    initial begin
        // 4-bit test cases
        a = 4'd8;  b = 4'd3;  #10;
        a = 4'd1;  b = 4'd0;  #10;
        a = 4'd9;  b = 4'd9;  #10;
        a = 4'd5;  b = 4'd7;  #10;
        a = 4'd15; b = 4'd4;  #10;

        $finish;
    end

endmodule