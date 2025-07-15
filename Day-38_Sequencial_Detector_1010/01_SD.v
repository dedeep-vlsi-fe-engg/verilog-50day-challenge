module sd (
    input clk,
    input rst,
    input in,
    output reg detected
);

// State Encoding (Binary Encoding)
parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011,
          S4 = 3'b100;

reg [2:0] state, next_state;

always @(posedge clk or posedge rst) begin
    if (rst)
        state <= S0;
    else
        state <= next_state;
end

always @(*) begin
    case (state)
        S0: next_state = in ? S1 : S0;
        S1: next_state = in ? S1 : S2;
        S2: next_state = in ? S3 : S0;
        S3: next_state = in ? S1 : S4;
        S4: next_state = in ? S1 : S0;
        default: next_state = S0;
    endcase
end

always @(*) begin
    detected = (state == S4);
end

endmodule