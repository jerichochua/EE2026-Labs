`timescale 1ns / 1ps

module practice(input A, input B, input C, output LED1, output LED2, output LED3);
    assign LED1 = (A & ~B & C) | (A & B & C);
    assign LED2 = (~A & B & C) | (A & B & C);
    assign LED3 = (A & B & C);
endmodule