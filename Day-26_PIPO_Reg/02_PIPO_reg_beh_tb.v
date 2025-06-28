`timescale 1ns/1ps

module pipo_reg_beh_tb;

reg clk, rst;
reg [3:0] data_in;
wire [3:0] data_out;

pipo_reg_beh uut (.clk(clk), .rst(rst), .data_in(data_in), .data_out(data_out));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // Clock with 10ns period
end

initial begin
    rst = 1; data_in = 4'b0000; #10;
    rst = 0;
    data_in = 4'b1010; #10;
    data_in = 4'b1100; #10;
    data_in = 4'b0110; #10;
    $finish;
end

endmodule