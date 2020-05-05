`timescale 1ns / 1ps

module slow_blinky_sim();
    reg CLOCK;
    
    slow_blinky_module dut (CLOCK);
    
    initial begin
        CLOCK = 0;
    end
    
    always begin
        #5 CLOCK = ~CLOCK;
    end
endmodule
