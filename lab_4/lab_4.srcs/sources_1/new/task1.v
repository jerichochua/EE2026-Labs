`timescale 1ns / 1ps

module task1(input CLOCK, btn, output pulse);
    wire c1, c2;
    dff firstdff (CLOCK, btn, c1);
    dff seconddff (CLOCK, c1, c2);
    assign pulse = (c1 & ~c2);
endmodule