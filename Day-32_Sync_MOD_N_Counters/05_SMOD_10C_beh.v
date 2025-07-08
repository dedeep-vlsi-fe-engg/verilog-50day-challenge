`timescale 1ns / 1ps

module smod10c_beh(
    input clk,
    input rst,
    output reg [3:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0000;
    else if (q == 4'b1001)  // 9 in binary
        q <= 4'b0000;
    else
        q <= q + 1;
end

endmodule
