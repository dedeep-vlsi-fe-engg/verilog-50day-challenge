`timescale 1ns/1ps

module srl_nor_gl_tb;
reg S, R;
wire Q, Qn;

srl_nor_gl uut (.S(S), .R(R), .Q(Q), .Qn(Qn));

initial begin
    S = 1; R = 0; #10; // Set
    S = 0; R = 0; #10; // Hold
    S = 0; R = 1; #10; // Reset
    S = 0; R = 0; #10; // Hold
    S = 1; R = 1; #10; // Invalid
    $finish;
end

endmodule