`timescale 1ns / 1ps

module slow_blinky_module(input CLOCK, output reg LED = 0);
    reg [26:0] COUNT = 26'b0;
    
    always @ (posedge CLOCK) begin
        COUNT <= COUNT + 1;
        LED <= (COUNT == 26'b0) ? ~LED : LED;
    end
endmodule
