`timescale 1ns / 1ps

// 16-bit counter, mulitplied by 2 (shift left) each time button is pressed

module task4(input CLOCK, btn, output [15:0] led);
    reg [15:0] counter = 16'h000C;
    wire c1, c2, pulse;
    
    my_dff firstdff (CLOCK, btn, c1);
    my_dff seconddff (CLOCK, c1, c2);
    assign pulse = (c1 & ~c2);
    
    always @ (posedge CLOCK) begin
        if (pulse == 1) begin
            counter <= counter << 1;
         end
    end
    
    assign led = counter;
endmodule
