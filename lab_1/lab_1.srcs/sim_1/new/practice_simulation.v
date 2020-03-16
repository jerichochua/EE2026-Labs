`timescale 1ns / 1ps

module practice_simulation();
    reg A;
    reg B;
    reg C;
    wire LED1;
    wire LED2;
    wire LED3;
    
    practice dut (A, B, C, LED1, LED2, LED3);
    
    initial begin
        A = 0; B = 0; C = 0; #10;
        A = 0; B = 0; C = 1; #10;
        A = 0; B = 1; C = 0; #10;
        A = 0; B = 1; C = 1; #10;
        A = 1; B = 0; C = 0; #10;
        A = 1; B = 0; C = 1; #10;
        A = 1; B = 1; C = 0; #10;
        A = 1; B = 1; C = 1; #10;
    end

endmodule
