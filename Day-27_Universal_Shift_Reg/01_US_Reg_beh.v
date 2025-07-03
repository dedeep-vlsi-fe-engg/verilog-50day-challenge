module usreg_beh (
    input clk,
    input rst,
    input [1:0] sel,         
    input [3:0] data_in,     
    input serial_in,         
    output reg [3:0] data_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        data_out <= 4'b0000;
    else begin
        case (sel)
            2'b00: data_out <= data_out;                      // Hold
            2'b01: data_out <= {serial_in, data_out[3:1]};    // Shift Right
            2'b10: data_out <= {data_out[2:0], serial_in};    // Shift Left
            2'b11: data_out <= data_in;                       // Parallel Load
        endcase
    end
end

endmodule