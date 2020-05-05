`timescale 1ns / 1ps

module slowclock(input CLOCK, output slow);
    reg [25:0] COUNT = 25'b0;
    always @ (posedge CLOCK) begin
        COUNT <= COUNT + 1;
    end
    assign slow = COUNT[25];
    // COUNT[23]: Approx 12Hz
    // COUNT[12]: Approx 25MHz
endmodule
