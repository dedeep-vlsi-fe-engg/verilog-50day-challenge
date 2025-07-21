module elevator_controller_tb;
    reg clk, reset;
    reg [2:0] req;
    wire [1:0] current_floor;
    wire direction;
    wire door;

    elevator_controller uut (
        .clk(clk),
        .reset(reset),
        .req(req),
        .current_floor(current_floor),
        .direction(direction),
        .door(door)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    initial begin
        $display("Time | Req | Floor | Dir | Door");
        $monitor("%4d | %b |   %d   |  %b  |  %b", $time, req, current_floor, direction, door);

        reset = 1; req = 3'b000; #10;
        reset = 0;

        // Request floor 2
        req = 3'b100; #30;

        // Request floor 0
        req = 3'b001; #30;

        // Request floor 1
        req = 3'b010; #30;

        // No request
        req = 3'b000; #20;

        $finish;
    end
endmodule