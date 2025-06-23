`timescale 1ns/1ps

module tff_gl_tb;
reg T, clk;
wire Q, Qn;

tff_gl uut (.T(T), .clk(clk), .Q(Q), .Qn(Qn));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    T = 0; #10;  // Hold
    T = 1; #10;  // Toggle
    T = 0; #10;  // Hold
    T = 1; #10;  // Toggle
    $finish;
end

endmodule