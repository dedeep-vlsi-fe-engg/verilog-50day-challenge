`timescale 1ns/1ps

module srl_nor_gl (
    input S, R,
    output Q, Qn
);

nor (Q, R, Qn);  // Q = ~(R + Qn)
nor (Qn, S, Q);  // Qn = ~(S + Q)

endmodule