`timescale 1ns/1ps

module jc_beh_tb;
reg clk, rst;
wire [3:0] q;

jc_beh uut (.clk(clk), .rst(rst), .q(q));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns clock
end

initial begin
    rst = 1; #10;
    rst = 0; #100;  // 10 clock cycles
    $finish;
end

endmodule