`timescale 1ns / 1ps

module gsrl_gl_tb;
reg S, R, En;
wire Q, Qn;

gsrl_gl uut (.S(S), .R(R), .En(En), .Q(Q), .Qn(Qn));

initial begin
    En = 0; S = 1; R = 0; #10;
    En = 1; S = 1; R = 0; #10; // Set
    En = 1; S = 0; R = 1; #10; // Reset
    En = 1; S = 0; R = 0; #10; // Hold
    En = 1; S = 1; R = 1; #10; // Invalid
    $finish;
end

endmodule