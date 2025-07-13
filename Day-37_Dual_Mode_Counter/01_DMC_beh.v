module dmc_beh (
    input clk,
    input rst,
    input mode,              // 0: Async, 1: Sync
    output reg [3:0] count
);

// internal storage
reg [3:0] async_count;
reg [3:0] sync_count;

// Async counter logic
always @(negedge clk or posedge rst) begin
    if (rst)
        async_count <= 4'b0000;
    else if (mode == 1'b0)
        async_count <= async_count + 1;
end

// Sync counter logic
always @(posedge clk or posedge rst) begin
    if (rst)
        sync_count <= 4'b0000;
    else if (mode == 1'b1)
        sync_count <= sync_count + 1;
end

// Output selection
always @(*) begin
    if (mode == 1'b0)
        count = async_count;
    else
        count = sync_count;
end

endmodule