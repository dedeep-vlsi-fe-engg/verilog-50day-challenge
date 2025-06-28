`timescale 1ns/1ps

module siso_reg_beh_tb;

reg clk, rst, data_in;
wire data_out;

siso_reg_beh uut (.clk(clk), .rst(rst), .data_in(data_in), .data_out(data_out));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10 ns clock period
end

initial begin
    rst = 1; data_in = 0; #10;
    rst = 0;

    data_in = 1; #10;
    data_in = 0; #10;
    data_in = 1; #10;
    data_in = 1; #10;
    $finish;
end

endmodule