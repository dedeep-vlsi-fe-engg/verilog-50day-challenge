module base_converter_force_tb();

// Testbench signals
reg [2:0] mode;
reg [15:0] data_in;
wire [15:0] data_out;
wire valid;

// Flag to track if initial simulation is complete
reg initial_simulation_done = 0;

// Instantiate the DUT (Device Under Test)
base_converter dut (
    .mode(mode),
    .data_in(data_in),
    .data_out(data_out),
    .valid(valid)
);

initial begin
    // Initialize to known state
    mode = 3'b000;
    data_in = 16'h0000;
    
    $display("Base Converter Force Constant Testing Testbench Ready");
    $display("Time\tMode\tInput\t\tOutput\t\tValid\tDescription");
    $display("----\t----\t-----\t\t------\t\t-----\t-----------");
    
    // Initial state
    #10;
    $display("%4t\t%3b\t%04h\t\t%04h\t\t%1b\tInitial State", 
             $time, mode, data_in, data_out, valid);
    
    // Wait for initial loading to complete
    #1000;
    initial_simulation_done = 1;
    $display("Initial simulation loading complete. Ready for force constant testing.");
    
    // This testbench will run indefinitely
    // Use force constants from Vivado console
    forever begin
        #10;
        $display("%4t\t%3b\t%04h\t\t%04h\t\t%1b\tCurrent State", 
                 $time, mode, data_in, data_out, valid);
    end
end

// Display change information whenever inputs change
always @(mode, data_in) begin
    $display("CHANGE: Time=%4t, Mode=%3b, Input=%04h, Output=%04h, Valid=%1b", 
             $time, mode, data_in, data_out, valid);
end

// Display mode information at the end of simulation time (only after initial loading)
always @(mode, data_in) begin
    if (initial_simulation_done) begin
        #9;  // Wait almost till the end of 10ns run
        
        // Check if output is valid and display appropriate message
        if (valid == 1'b0) begin
            $display("ERROR: Invalid input! Please provide valid input for the selected mode.");
            $display("Current Mode: %3b, Current Input: %04h", mode, data_in);
        end
        
        $display("Base Converter Mode Information:");
        $display("Mode 000: Hex to Dec                 (Input: Hex value, Output: Packed BCD)");
        $display("Mode 001: Bin to Dec                 (Input: Packed Binary digits, Output: Packed BCD)");
        $display("Mode 010: Dec to Bin                 (Input: Packed BCD, Output: Binary value)");
        $display("Mode 011: Dec to Hex                 (Input: Packed BCD, Output: Hex value)");
        $display("Mode 100: Bin to Hex                 (Input: Packed Binary digits, Output: Hex value)");
        $display("Mode 101: Hex to Bin                 (Input: Hex value, Output: Packed Binary digits)");
        $display("Mode 110: Oct to Dec                 (Input: Packed Octal, Output: Packed BCD)");
        $display("Mode 111: Dec to Oct                 (Input: Packed BCD, Output: Packed Octal)");
        $display("");
        $display("Input Format Examples:");
        $display("  Packed BCD (Decimal): 1234 = 0x1234 (each nibble 0-9)");
        $display("  Packed Binary: 1010 = 0x1010 (each nibble 0-1)");
        $display("  Packed Octal: 1234 = 0x1234 (each nibble 0-7)");
        $display("  Hex/Binary: Direct 16-bit value");
        $display("");
        $display("Usage Examples:");
        $display("  Mode 000 (Hex2Dec): data_in=0x001F → data_out=0x0031 (31 decimal)");
        $display("  Mode 001 (Bin2Dec): data_in=0x1010 → data_out=0x0010 (10 decimal)");
        $display("  Mode 010 (Dec2Bin): data_in=0x0031 → data_out=0x001F (31 binary)");
        $display("  Mode 011 (Dec2Hex): data_in=0x0031 → data_out=0x001F (31 hex)");
        $display("  Mode 100 (Bin2Hex): data_in=0x1111 → data_out=0x000F (15 hex)");
        $display("  Mode 101 (Hex2Bin): data_in=0x000F → data_out=0x1111 (1111 binary)");
        $display("  Mode 110 (Oct2Dec): data_in=0x0037 → data_out=0x0031 (31 decimal)");
        $display("  Mode 111 (Dec2Oct): data_in=0x0031 → data_out=0x0037 (37 octal)");
        $display("");
        $display("Note: Force constant 'mode' and 'data_in', then click 'Run for 10 ns'.");
        $display("Valid Ranges:");
        $display("  Decimal (BCD): 0000-9999, Binary digits: 0000-1111, Octal digits: 0000-7777");
        $display("  Hex values: 0000-FFFF (but limited by output format constraints)");
        $display("--------------------------------------------------------------------------------------");
    end
end

endmodule