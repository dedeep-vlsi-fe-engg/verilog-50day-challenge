`timescale 1ns/1ps

module sudc_beh_tb;
reg clk, rst, up_down;
wire [3:0] q;

sudc_beh uut (.clk(clk), .rst(rst), .up_down(up_down), .q(q));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns clock
end

initial begin
    rst = 1; up_down = 1; #10;
    rst = 0;             #60;   // Up count for 60ns

    up_down = 0;         #60;   // Down count for 60ns

    up_down = 1;         #40;
    $finish;
end

endmodule