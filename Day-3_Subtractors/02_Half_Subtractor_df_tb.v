`timescale 1ns / 1ps

module hs_df_tb;
    reg a, b;
    wire diff, borrow;

    hs_df DUT (.a(a), .b(b), .diff(diff), .borrow(borrow));

    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule