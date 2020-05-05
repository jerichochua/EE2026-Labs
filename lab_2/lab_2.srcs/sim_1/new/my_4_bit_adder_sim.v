`timescale 1ns / 1ps

module my_4_bit_adder_sim();
    reg [3:0] A;
    reg [3:0] B;
    reg CIN;
    
    wire [3:0] S;
    wire COUT;
    
    my_4_bit_adder dut (A, B, CIN, S, COUT);
    
    initial begin
        A = 4'b0011; B = 4'b0011; CIN = 1'b0; #10;
        A = 4'b1011; B = 4'b0111; CIN = 1'b0; #10;
        A = 4'b1111; B = 4'b1111; CIN = 1'b0; #10;
    end
endmodule