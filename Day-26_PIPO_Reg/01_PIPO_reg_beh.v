module pipo_reg_beh (
    input clk,
    input rst,
    input [3:0] data_in,
    output reg [3:0] data_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        data_out <= 4'b0000;
    else
        data_out <= data_in;
end

endmodule