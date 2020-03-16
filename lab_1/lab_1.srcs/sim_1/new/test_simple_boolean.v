`timescale 1ns / 1ps

module my_control_module_simulation();
    // Simulation Inputs
    reg A;
    reg B;
    
    // Simulation Outputs
    wire LED1;
    wire LED2;
    wire LED3;
    
    // Instantiate module to be simulated
    my_control_module dut (A, B, LED1, LED2, LED3);
    
    initial begin
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
    end
endmodule
