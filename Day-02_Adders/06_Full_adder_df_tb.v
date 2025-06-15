`timescale 1ns / 1ps
// File: full_adder_df_tb.v

module fa_df_tb;
    reg  a, b, cin;
    wire sum, cout;
    integer i;

    fa_df DUT (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i; #10;
        end
        $finish;
    end
endmodule