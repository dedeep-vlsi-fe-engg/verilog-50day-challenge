`timescale 1ns / 1ps

module piso_reg_beh(
    input clk,
    input load,
    input [3:0] data_in,
    output reg data_out
);

reg [3:0] temp;

always @(posedge clk) begin
    if (load)
        temp <= data_in;  // Load all bits in parallel
    else begin
        data_out <= temp[3];      // Output MSB
        temp <= temp << 1;        // Shift left
    end
end

endmodule