module code_converter_tb();
reg [2:0] mode;
reg [3:0] data_in;
wire [3:0] data_out;
wire valid;

// Instantiate the DUT (Device Under Test)
code_converter dut (
    .mode(mode),
    .data_in(data_in),
    .data_out(data_out),
    .valid(valid)
);

initial begin
    // Initialize to known state
    mode = 3'b000;
    data_in = 4'b0000;
    
    $display("Force Constant Testing Testbench Ready");
    $display("Time\tMode\tInput\tOutput\tValid\tDescription");
    $display("----\t----\t-----\t------\t-----\t-----------");
    
    // Initial state
    #10;
    $display("%4t\t%3b\t%4b\t%4b\t%1b\tInitial State", 
             $time, mode, data_in, data_out, valid);
    
    // This testbench will run indefinitely
    // Use force constants from Vivado console
    forever begin
        #10;
        $display("%4t\t%3b\t%4b\t%4b\t%1b\tCurrent State", 
                 $time, mode, data_in, data_out, valid);
    end
end

// Continuous monitoring
always @(mode, data_in, data_out, valid) begin
    $display("CHANGE: Time=%4t, Mode=%3b, Input=%4b, Output=%4b, Valid=%1b", 
             $time, mode, data_in, data_out, valid);
end

always @(mode, data_in) begin
    #1000;  // Wait almost till the end of 1us run
    $display("Mode 000: Binary to Gray Code        (Valid for all 4-bit binary inputs)");
    $display("Mode 001: Gray to Binary             (Valid for all 4-bit Gray codes)");
    $display("Mode 010: Binary to BCD              (Valid for binary inputs 0000 to 1001)");
    $display("Mode 011: BCD to Excess-3            (Valid for BCD inputs 0000 to 1001)");
    $display("Mode 100: Binary to Excess-3         (Valid for binary inputs 0000 to 1001)");
    $display("Mode 101: Excess-3 to Binary         (Valid for inputs 0011 to 1100)");
    $display("Mode 110: Excess-3 to BCD            (Valid for inputs 0011 to 1100)");
    $display("Mode 111: BCD to Binary              (Valid for BCD inputs 0000 to 1001)");
    $display("Hello User, Welcome to 7 in 1 Code Converter, To Proceed");
    $display("===================================================================================================");
    $display("Please Give the Mode and Input Manually using 'Force Constant'");
    $display("Right Click on the 'mode' and 'data_in', To provide your desired Mode and Input");
    $display("Make sure you provide 'mode' in Binary or Unsigned Decimal Radix and 'data_in' in Unsigned Decimal");
    $display("Then click 'Run for 1 us', To Get your Output");
    $display("===================================================================================================");
    
    if (valid == 1'b0) begin
     $display("ERROR: Invalid input! Please provide valid input for the selected mode.");
     $display("Current Mode: %3b, Current Input: %4b", mode, data_in);
    end
end

endmodule