module uc_beh (
    input clk,
    input clr,               // Asynchronous clear
    input load,              // Synchronous load
    input up_down,           // 1 = up, 0 = down
    input en,                // Enable counting
    input [3:0] data,        // Data to load
    output reg [3:0] q       // Output count
);

always @(posedge clk or posedge clr) begin
    if (clr)
        q <= 4'b0000;                          // Asynchronous reset
    else if (load)
        q <= data;                             // Load external data
    else if (en) begin
        if (up_down)
            q <= q + 1;                        // Count up
        else
            q <= q - 1;                        // Count down
    end
end

endmodule