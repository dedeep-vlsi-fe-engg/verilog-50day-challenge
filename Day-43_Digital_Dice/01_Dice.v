`timescale 1ns / 1ps

module dice (
    input clk,
    input rst,
    input roll,          // Trigger (e.g., button)
    output reg [2:0] dice // Binary output: 1 to 6
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            dice <= 3'd1;
        else if (roll)
            dice <= (dice == 3'd6) ? 3'd1 : dice + 1;
    end
endmodule