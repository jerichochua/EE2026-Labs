`timescale 1ns / 1ps

// 8-bit counter, increase counter by 1 each time button is pressed

module task3(input CLOCK, btn, output [7:0] led);
    reg [7:0] counter = 8'b00000000;
    wire c1, c2, pulse;
    
    my_dff firstdff (CLOCK, btn, c1);
    my_dff seconddff (CLOCK, c1, c2);
    assign pulse = (c1 & ~c2);
    
    always @ (posedge CLOCK) begin
        if (pulse == 1) begin
            counter <= counter + 1;
         end
    end
        
    assign led = counter;
endmodule
