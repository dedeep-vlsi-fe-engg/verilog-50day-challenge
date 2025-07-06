`timescale 1ns/1ps

module mod5_beh_tb;
reg clk, rst;
wire [2:0] mod5_q;

mod5_beh u1 (.clk(clk), .rst(rst), .q(mod5_q));

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