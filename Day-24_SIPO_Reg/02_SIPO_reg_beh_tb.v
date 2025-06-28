`timescale 1ns/1ps

module sipo_reg_beh_tb;

reg clk, rst, data_in;
wire [3:0] data_out;

sipo_reg_beh uut (.clk(clk), .rst(rst), .data_in(data_in), .data_out(data_out));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns clock period
end

initial begin
    rst = 1; data_in = 0; #10;
    rst = 0;
    data_in = 1; #10;  // Shift in '1'
    data_in = 0; #10;  // Shift in '0'
    data_in = 1; #10;  // Shift in '1'
    data_in = 1; #10;  // Shift in '1'
    $finish;
end

endmodule