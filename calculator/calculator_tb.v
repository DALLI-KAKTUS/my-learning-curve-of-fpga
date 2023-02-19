`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:29:47 02/19/2023
// Design Name:   calculator
// Module Name:   /mnt/c/Users/berke/Desktop/my-learning-curve-of-fpga/calculator/calculator_tb.v
// Project Name:  calculator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: calculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module calculator_tb;

	// Inputs
	reg clk;
	reg [3:0] number;

	// Outputs
	wire [7:0] sseg_o;
	wire [3:0] anodes;

	// Instantiate the Unit Under Test (UUT)
	calculator uut (
		.clk(clk), 
		.number(number), 
		.sseg_o(sseg_o), 
		.anodes(anodes)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		number = 0;
		
		
		// Wait 100 ns for global reset to finish
		#100;
      number = 4'b0001;
		#100;
		number = 4'b1000;
		// Add stimulus here

	end
   always begin
	#10 clk = !clk;
	end
endmodule

