module siso_reg_beh (
    input clk,
    input rst,
    input data_in,
    output reg data_out
);

reg [3:0] shift_reg;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        shift_reg <= 4'b0000;
        data_out <= 0;
    end else begin
        shift_reg <= {shift_reg[2:0], data_in};  // Shift left
        data_out <= shift_reg[3];               // MSB out
    end
end

endmodule