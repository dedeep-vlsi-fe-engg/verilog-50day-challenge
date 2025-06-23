`timescale 1ns/1ps

module srff_gl_tb;
reg S, R, clk;
wire Q, Qn;

srff_gl uut (.S(S), .R(R), .clk(clk), .Q(Q), .Qn(Qn));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10 ns clock
end

initial begin
    S=0; R=0; #10;
    S=1; R=0; #10;  // Set
    S=0; R=1; #10;  // Reset
    S=0; R=0; #10;  // Hold
    S=1; R=1; #10;  // Invalid
    $finish;
end

endmodule