`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:35:36 01/23/2020
// Design Name:   four_adder
// Module Name:   /home/pavanpreetham/Desktop/fourbitadder/four_test.v
// Project Name:  fourbitadder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [3:0] s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	four_adder uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
      a = 15;
		b = 9;

		// Wait 100 ns for global reset to finish
		#100; 
		// Add stimulus here

	end
      
endmodule

