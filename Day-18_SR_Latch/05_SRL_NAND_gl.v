`timescale 1ns / 1ps

module srl_nand_gl(
    input S, R,
    output Q, Qn
);

nand (Q, S, Qn);  // Q = ~(S & Qn)
nand (Qn, R, Q);  // Qn = ~(R & Q)

endmodule