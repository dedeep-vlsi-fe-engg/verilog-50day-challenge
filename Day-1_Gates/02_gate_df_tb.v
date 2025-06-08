`timescale 1ns/1ps

//-----------------------------------------------------------------------------
// File: gates_df_tb.v
// Testbench for gates_df.v
//-----------------------------------------------------------------------------

module gates_df_tb;

    reg  a, b;
    wire y_not, y_and, y_or, y_nand, y_nor, y_xor, y_xnor;

    gates_df DUT (
        .a     (a),
        .b     (b),
        .y_not (y_not),
        .y_and (y_and),
        .y_or  (y_or),
        .y_nand(y_nand),
        .y_nor (y_nor),
        .y_xor (y_xor),
        .y_xnor(y_xnor)
    );

    initial begin
        {a,b} = 2'b00; #10;
        {a,b} = 2'b01; #10;
        {a,b} = 2'b10; #10;
        {a,b} = 2'b11; #10;
        $finish;
    end
endmodule