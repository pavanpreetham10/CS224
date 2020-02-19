`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:58:45 01/30/2020
// Design Name:   mux
// Module Name:   /home/pavanpreetham/Desktop/mux/mux_test.v
// Project Name:  mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_test;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg s0;
	reg s1;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s0(s0), 
		.s1(s1), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 1;
		i2 = 1;
		i3 = 0;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		i0 = 0;
		i1 = 1;
		i2 = 1;
		i3 = 0;
		s0 = 0;
		s1 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		i0 = 0;
		i1 = 1;
		i2 = 1;
		i3 = 0;
		s0 = 1;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		i0 = 0;
		i1 = 1;
		i2 = 1;
		i3 = 0;
		s0 = 1;
		s1 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

