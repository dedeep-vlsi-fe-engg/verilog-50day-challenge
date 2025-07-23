module calculator(
    input [1:0] mode,           // 00: Add, 01: Sub, 10: Mul, 11: Div
    input [7:0] operand_a,      // First operand (8-bit)
    input [7:0] operand_b,      // Second operand (8-bit)
    input signed_operation,     // 1: Signed, 0: Unsigned
    output reg [15:0] result,   // Result (16-bit to accommodate multiplication)
    output reg valid,           // Valid output flag
    output reg overflow,        // Overflow flag
    output reg divide_by_zero   // Division by zero flag
);

// Internal variables for signed operations
wire signed [7:0] signed_a = operand_a;
wire signed [7:0] signed_b = operand_b;
wire signed [15:0] signed_result_add, signed_result_sub, signed_result_mul, signed_result_div;
wire [15:0] unsigned_result_add, unsigned_result_sub, unsigned_result_mul, unsigned_result_div;

// Signed arithmetic operations
assign signed_result_add = signed_a + signed_b;
assign signed_result_sub = signed_a - signed_b;
assign signed_result_mul = signed_a * signed_b;
assign signed_result_div = (signed_b != 0) ? (signed_a / signed_b) : 16'h0000;

// Unsigned arithmetic operations
assign unsigned_result_add = operand_a + operand_b;
assign unsigned_result_sub = (operand_a >= operand_b) ? (operand_a - operand_b) : 16'h0000;
assign unsigned_result_mul = operand_a * operand_b;
assign unsigned_result_div = (operand_b != 0) ? (operand_a / operand_b) : 16'h0000;

always @(*) begin
    // Initialize flags
    valid = 1'b1;
    overflow = 1'b0;
    divide_by_zero = 1'b0;
    result = 16'h0000;
    
    case (mode)
        2'b00: begin // Addition
            if (signed_operation) begin
                result = signed_result_add;
                // Check for signed overflow in addition
                if ((signed_a[7] == signed_b[7]) && (signed_result_add[7] != signed_a[7])) begin
                    overflow = 1'b1;
                end
            end else begin
                result = unsigned_result_add;
                // Check for unsigned overflow in addition
                if (unsigned_result_add > 16'h00FF) begin
                    overflow = 1'b1;
                end
            end
        end
        
        2'b01: begin // Subtraction
            if (signed_operation) begin
                result = signed_result_sub;
                // Check for signed overflow in subtraction
                if ((signed_a[7] != signed_b[7]) && (signed_result_sub[7] != signed_a[7])) begin
                    overflow = 1'b1;
                end
            end else begin
                if (operand_a >= operand_b) begin
                    result = unsigned_result_sub;
                end else begin
                    result = 16'h0000;
                    valid = 1'b0; // Invalid for unsigned subtraction when A < B
                end
            end
        end
        
        2'b10: begin // Multiplication
            if (signed_operation) begin
                result = signed_result_mul;
                // Check for signed overflow in multiplication
                if (signed_result_mul > 16'sh7FFF || signed_result_mul < -16'sh8000) begin
                    overflow = 1'b1;
                end
            end else begin
                result = unsigned_result_mul;
                // Check for unsigned overflow in multiplication
                if (unsigned_result_mul > 16'hFFFF) begin
                    overflow = 1'b1;
                end
            end
        end
        
        2'b11: begin // Division
            if (operand_b == 8'h00) begin
                divide_by_zero = 1'b1;
                valid = 1'b0;
                result = 16'h0000;
            end else begin
                if (signed_operation) begin
                    result = signed_result_div;
                end else begin
                    result = unsigned_result_div;
                end
            end
        end
        
        default: begin
            result = 16'h0000;
            valid = 1'b0;
        end
    endcase
end

endmodule