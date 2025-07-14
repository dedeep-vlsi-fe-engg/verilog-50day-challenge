module seq_1010_detector (
    input clk,
    input rst,
    input in,
    output reg detected
);

// State encoding
typedef enum reg [2:0] {
    S0, // Initial
    S1, // 1
    S2, // 10
    S3, // 101
    S4  // 1010 → detected
} state_t;

state_t state, next_state;

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
