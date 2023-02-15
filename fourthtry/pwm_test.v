`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:49:05 02/06/2023
// Design Name:   pwm
// Module Name:   /mnt/c/Users/berke/Desktop/my-learning-curve-of-fpga/fourthtry/pwm_test.v
// Project Name:  fourthtry
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pwm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pwm_test;

	// Inputs
	reg clk;
	reg [7:0] duty;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	pwm uut (
		.clk(clk), 
		.duty(duty), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		duty = 0;

		// Wait 100 ns for global reset to finish
		#100;
		duty = 124;
		#100000
		duty = 50;
		#100000;
		duty = 240;
		#100000;
        
		// Add stimulus here
		
	end
	always begin
   #10 clk = !clk;
	end
	
endmodule

