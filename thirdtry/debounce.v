`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:36:17 02/03/2023 
// Design Name: 
// Module Name:    debounce 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
	
	module debounce(
    input sig_in,
    input clk,
    output sig_out			
    );
	  reg [2:0] q;

   always @ (posedge clk)
         q <= {q[1:0], sig_in};
   assign sig_out = q[0] & q[1] & !q[2];
endmodule
