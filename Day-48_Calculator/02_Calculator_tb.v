module calculator_force_tb();
// Testbench signals
reg [1:0] mode;
reg [7:0] operand_a;
reg [7:0] operand_b;
reg signed_operation;
wire [15:0] result;
wire valid;
wire overflow;
wire divide_by_zero;

// Flag to track if initial simulation is complete
reg initial_simulation_done = 0;
// Instantiate the DUT (Device Under Test)
calculator dut (
    .mode(mode),
    .operand_a(operand_a),
    .operand_b(operand_b),
    .signed_operation(signed_operation),
    .result(result),
    .valid(valid),
    .overflow(overflow),
    .divide_by_zero(divide_by_zero)
);
initial begin
    // Initialize to known state
    mode = 2'b00;
    operand_a = 8'h00;
    operand_b = 8'h00;
    signed_operation = 1'b0;
    // Wait for initial loading to complete
    #1000;
    initial_simulation_done = 1;
end

// Display change information whenever inputs change
always @(mode, operand_a, operand_b, signed_operation) begin
    $display("CHANGE: Time=%4t, Mode=%2b, A=%02h, B=%02h, Signed=%1b, Result=%04h, Valid=%1b, Overflow=%1b, Div_by_Zero=%1b", 
             $time, mode, operand_a, operand_b, signed_operation, result, valid, overflow, divide_by_zero);
end

// Display mode information at the end of simulation time (only after initial loading)
always @(mode, operand_a, operand_b, signed_operation) begin
    if (initial_simulation_done) begin
        #9;  // Wait almost till the end of 10ns run
        
        // Check for error conditions and display appropriate messages
        if (divide_by_zero == 1'b1) begin
            $display("ERROR: Division by zero! Please provide non-zero value for operand_b.");
            $display("Current Mode: %2b, Operand A: %02h, Operand B: %02h, Signed: %1b", 
                     mode, operand_a, operand_b, signed_operation);
        end
        
        if (valid == 1'b0 && divide_by_zero == 1'b0) begin
            $display("ERROR: Invalid operation! Check your inputs and mode selection.");
            $display("Current Mode: %2b, Operand A: %02h, Operand B: %02h, Signed: %1b", 
                     mode, operand_a, operand_b, signed_operation);
        end
        
        if (overflow == 1'b1) begin
            $display("WARNING: Arithmetic overflow detected! Result may not be accurate.");
            $display("Current Mode: %2b, Operand A: %02h, Operand B: %02h, Signed: %1b", 
                     mode, operand_a, operand_b, signed_operation);
        end
        
        $display("Calculator Mode Information:");
        $display("Mode 00: Addition                    (A + B)");
        $display("Mode 01: Subtraction                 (A - B)");
        $display("Mode 10: Multiplication              (A * B)");
        $display("Mode 11: Division                    (A / B, B must be non-zero)");
        $display("Signed Operation: 0 = Unsigned, 1 = Signed (2's complement)");
        $display("Operands: 8-bit values (00 to FF hex)");
        $display("Result: 16-bit output (0000 to FFFF hex)");
        $display("Flags: Valid, Overflow, Divide_by_Zero");
        $display("Note: Force constant 'mode', 'operand_a', 'operand_b', 'signed_operation', then 'Run for 10 ns'.");
        $display("Examples:");
        $display("  Unsigned: mode=00, operand_a=05, operand_b=03, signed_operation=0 → Result=0008");
        $display("  Signed:   mode=01, operand_a=FE(-2), operand_b=01, signed_operation=1 → Result=FFFD(-3)");
        $display("--------------------------------------------------------------------------------------");
    end
end
endmodule