`timescale 1ns/1ps

module piso_reg_beh_tb;

reg clk, load;
reg [3:0] data_in;
wire data_out;

piso_reg_beh uut (.clk(clk), .load(load), .data_in(data_in), .data_out(data_out));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10 ns clock
end

initial begin    
    load = 1; data_in = 4'b1011; #10;  // Load data
    load = 0; #10;  // Output bit 3
    #10;            // Output bit 2
    #10;            // Output bit 1
    #10;            // Output bit 0
    $finish;
end

endmodule