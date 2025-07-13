`timescale 1ns/1ps

module dmc_beh_tb;
reg clk, rst, mode;
wire [3:0] count;

dmc_beh uut (.clk(clk), .rst(rst), .mode(mode), .count(count));

initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns period
end

initial begin
    rst = 1; mode = 0; #10;
    rst = 0;

    // Async mode counting
    #100;

    // Switch to sync mode
    mode = 1;
    #100;

    $finish;
end

endmodule