`timescale 1ns / 1ps
// File: half_adder_df_tb.v

module ha_df_tb;
    reg  a, b;
    wire sum, carry;

    ha_df DUT (.a(a), .b(b), .sum(sum), .carry(carry));

    initial begin
        {a,b} = 2'b00; #10;
        {a,b} = 2'b01; #10;
        {a,b} = 2'b10; #10;
        {a,b} = 2'b11; #10;
        $finish;
    end
endmodule