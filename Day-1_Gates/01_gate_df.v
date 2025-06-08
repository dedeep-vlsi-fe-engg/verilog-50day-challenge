`timescale 1ns / 1ps

//-----------------------------------------------------------------------------
// File: gates_df.v
// Day 1: All Basic Logic Gates in Dataflow Style
//-----------------------------------------------------------------------------

module gates_df(

    input  wire a,
    input  wire b,
    output wire y_not,
    output wire y_and,
    output wire y_or,
    output wire y_nand,
    output wire y_nor,
    output wire y_xor,
    output wire y_xnor
);

    assign y_not  = ~a;
    assign y_and  = a & b;
    assign y_or   = a | b;
    assign y_nand = ~(a & b);
    assign y_nor  = ~(a | b);
    assign y_xor  = a ^ b;
    assign y_xnor = ~(a ^ b);

endmodule