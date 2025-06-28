`timescale 1ns / 1ps

module sipo_reg_beh(
    input clk,
    input rst,
    input data_in,
    output reg [3:0] data_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        data_out <= 4'b0000;
    else
        data_out <= {data_out[2:0], data_in};  // Shift right
end

endmodule