`timescale 1ns / 1ps

module cla_df_tb;
    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    cla_df DUT (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b1010; b = 4'b0101; cin = 0; #10;
        a = 4'b1100; b = 4'b1100; cin = 1; #10;
        a = 4'b1111; b = 4'b0001; cin = 1; #10;
        a = 4'b0111; b = 4'b1000; cin = 0; #10;
        $finish;
    end
endmodule