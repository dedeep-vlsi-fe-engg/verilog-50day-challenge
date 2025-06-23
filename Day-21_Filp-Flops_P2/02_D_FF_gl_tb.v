`timescale 1ns/1ps

module dff_gl_tb;
reg D, clk;
wire Q, Qn;

dff_gl uut (.D(D), .clk(clk), .Q(Q), .Qn(Qn));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;
    $finish;
end

endmodule