`timescale 1ns / 1ps

module bcd_adder_df_tb;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum, bcd_sum;
    wire       cout;

    bcd_adder_df uut (.a(a), .b(b), .cin(cin), .sum(sum), .bcd_sum(bcd_sum), .cout(cout));

    initial begin
        // Test cases
        a = 4'd5;  b = 4'd3;  cin = 0; #10;
        a = 4'd6;  b = 4'd5;  cin = 0; #10;
        a = 4'd9;  b = 4'd8;  cin = 0; #10;
        a = 4'd4;  b = 4'd4;  cin = 1; #10;
        a = 4'd9;  b = 4'd9;  cin = 1; #10;

        $finish;
    end

endmodule