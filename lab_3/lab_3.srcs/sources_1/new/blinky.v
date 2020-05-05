`timescale 1ns / 1ps

module blinky(input CLOCK, output LED);
    assign LED = CLOCK;
endmodule
