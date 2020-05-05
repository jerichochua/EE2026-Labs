`timescale 1ns / 1ps

module main(input CLOCK, input btn, output [15:0] led);
    wire freq, pulse, count;
    slowclock slow (CLOCK, freq);
    //task3 t3 (freq, btn, led[7:0]);
    task4 t4 (freq, btn, led[15:0]);
endmodule
