`timescale 1ns/1ps

module mod10_beh_tb;
reg clk, rst;
wire [2:0] mod5_q;
wire [3:0] mod10_q;

mod10_beh u2 (.clk(clk), .rst(rst), .q(mod10_q));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns clock
end

initial begin
    rst = 1; #10;
    rst = 0; #200;
    $finish;
end

endmodule