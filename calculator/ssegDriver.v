`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:48 02/18/2023 
// Design Name: 
// Module Name:    sevensegmentdriver 
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
module ssegDriver(
	//saat tanmla
	input clk,
	//gelen say tanmla
	input [9:0] number,
	//7 segment kts tanmla
	output [7:0] sseg_o,
	output [3:0] anodes_o
    );
	//denemek iin anodes'u 1 yap
	reg anodes = 4'b1110;
	assign anodes_o = anodes;
	//her segment iin bir bitlik register
	reg [7:0] sseg = 8'b11111111;
	//saatin her yuksek seviyesinde kontrol et
	always @(posedge clk)
		begin
	//binary sayiyi 7 segmente ceviren case yapsi
	//basys2 karti icin cktilar terse cevrilmis
			case (number)
				4'b0000: sseg <= 8'b11000000; //00000011;
				4'b0001: sseg <= 8'b11111001; //10011111;
				4'b0010: sseg <= 8'b10100100; //00100101;
				4'b0011: sseg <= 8'b10110000; //00001101;
				4'b0100: sseg <= 8'b10011001; //10011001;
				4'b0101: sseg <= 8'b10010010; //01001001;
				4'b0110: sseg <= 8'b10000010; //01000001;
				4'b0111: sseg <= 8'b11111000; //00011111;
				4'b1000: sseg <= 8'b10000000; //00000001;
				4'b1001: sseg <= 8'b10010000; //00001001;
				default  sseg <= 8'b11111111;
			endcase
		end
	assign sseg_o = sseg;
endmodule
