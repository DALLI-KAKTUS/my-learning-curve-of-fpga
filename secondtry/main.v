`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:00 02/02/2023 
// Design Name: 
// Module Name:    main 
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
module vga_test(
	(
		input wire clk, reset,
		input wire [7:0] sw,
		output wire hsync, vsync,
		output wire [7:0] rgb
	);
	
	// register for Basys 2 8-bit RGB DAC 
	reg [7:0] rgb_reg;
	
	// video status output from vga_sync to tell when to route out rgb signal to DAC
	wire video_on;

        // instantiate vga_sync
        vga_sync vga_sync_unit (.clk(clk), .reset(reset), .hsync(hsync), .vsync(vsync),
                             .video_on(video_on), .p_tick(), .x(), .y());
   
        // rgb buffer
        always @(posedge clk, posedge reset)
        if (reset)
           rgb_reg <= 0;
        else
           rgb_reg <= sw;
        
        // output
        assign rgb = (video_on) ? rgb_reg : 8'b0;
	
    );


endmodule
