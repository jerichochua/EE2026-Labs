`timescale 1ns / 1ps

module blinky_sim();
    reg CLOCK;
    wire LED;
    
    blinky dut (CLOCK, LED);
    
    initial begin
        CLOCK = 0;
    end
    
    always begin
        #5 CLOCK = ~CLOCK;
    end
endmodule
