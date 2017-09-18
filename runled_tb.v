`timescale 10ns / 10ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:04:13 02/21/2017
// Design Name:   runled
// Module Name:   C:/Proj/runled/runled_tb.v
// Project Name:  runled
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: runled
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module runled_tb;

	// Inputs
	reg f_clk_1;
	reg f_clk_2;
	reg clk_25MHz;
	reg nreset;
	reg [1:0] encoda;
	reg encodAsw;
	reg [1:0] encodb;
	reg encodBsw;
	reg KEY1;
	reg KEY2;

	// Outputs
	wire [7:0] leds;
	wire [19:0] digit;
	wire [7:0] digseg;
	wire [5:0] ledcir;

	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	runled uut (
		.f_clk_1(f_clk_1), 
		.f_clk_2(f_clk_2), 
		.clk_25MHz(clk_25MHz), 
		.nreset(nreset),
		.KEY1(KEY1),
		.KEY2(KEY2),
		.encoda(encoda), 
		.encodAsw(encodAsw), 
		.encodb(encodb), 
		.encodBsw(encodBsw), 
		.leds(leds), 
		.digit(digit), 
		.digseg(digseg), 
		.ledcir(ledcir)
	);
	
	always #150 f_clk_1 = ~f_clk_1;
	always #125 f_clk_2 = ~f_clk_2;	
	always #20 clk_25MHz = ~clk_25MHz;

	initial begin
		// Initialize Inputs
		nreset = 0;
		#100
		f_clk_1 = 0;
		f_clk_2 = 0;
		clk_25MHz = 0;
		KEY1 = 1; 	KEY2 = 1; encodAsw = 1; encodBsw = 1;
		encoda = 3;		encodb = 3;
		nreset = 1;

		// Wait 100 ns for global reset to finish
		$monitor (" A = %b", encoda, " B = %b", encodb);
		#100;
		// Add stimulus here
		for(i = 0; i <= 40; i = i + 1)
		begin
		#400;	encoda = 2'b00;	encodb = 2'b01;
		#400;	encoda = 2'b10;	encodb = 2'b11;
		#400;	encoda = 2'b11;	encodb = 2'b10;
		#400;	encoda = 2'b01;	encodb = 2'b00;
		$display ("------------------------------------");
		end
		
		#200 		KEY1 = 0;
		#40 		KEY1 = 1;
		#200 		KEY1 = 0; 	KEY2 = 0; encodAsw = 0; encodBsw = 0;
		#400 		KEY1 = 1;
		#200 		KEY2 = 1; 
		#200 		encodAsw = 1;
		#200 		encodBsw = 1;
		for(i = 0; i <= 40; i = i + 1)
		begin
		#400;	encoda = 2'b00;	encodb = 2'b01;
		#400;	encoda = 2'b10;	encodb = 2'b11;
		#400;	encoda = 2'b11;	encodb = 2'b10;
		#400;	encoda = 2'b01;	encodb = 2'b00;
		$display ("------------------------------------");
		end
       
	end
endmodule

