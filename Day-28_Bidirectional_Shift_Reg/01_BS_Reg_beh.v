module bsreg_beh (
    input clk,
    input rst,
    input dir, // Direction: 0 = Shift Right, 1 = Shift Left
    input serial_in,
    output reg [3:0] data_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        data_out <= 4'b0000;
    else begin
        case (dir)
            1'b0: data_out <= {serial_in, data_out[3:1]};  // Shift Right
            1'b1: data_out <= {data_out[2:0], serial_in};  // Shift Left
        endcase
    end
end
endmodule