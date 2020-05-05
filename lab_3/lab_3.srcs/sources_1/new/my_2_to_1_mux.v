`timescale 1ns / 1ps

module my_2_to_1_mux(input A, input B, input S, output Z);
    assign Z = S ? B : A;
endmodule
