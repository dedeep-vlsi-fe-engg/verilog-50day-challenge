`timescale 1ns / 1ps

module fs_df_tb;
    reg a, b, bin;
    wire diff, borrow;
    integer i;

    fs_df DUT (.a(a), .b(b), .bin(bin), .diff(diff), .borrow(borrow));

    initial begin
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, bin} = i;
            #10;
        end
        $finish;
    end
endmodule