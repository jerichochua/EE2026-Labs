`timescale 1ns / 1ps

module blinky_task7(input CLOCK, input SW0, output LED);
    reg [26:0] COUNT = 26'b0;
    always @ (posedge CLOCK) begin
        COUNT <= COUNT + 1;
    end
    assign LED = SW0 ? COUNT[25] : COUNT[26];
endmodule
