`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:38:55 02/06/2023 
// Design Name: 
// Module Name:    pwm 
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
module pwm(
    input clk,
    input [7:0] duty,
    output reg out
    );

reg [7:0] counter = 0;


always @ (posedge clk)
begin
counter <= counter +1;

if (duty > counter)
begin
	out = 1'b1;
end
else
begin
	out = 1'b0;
end

end

endmodule
