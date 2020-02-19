`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:39 01/23/2020
// Design Name:   four_ripple
// Module Name:   /home/pavanpreetham/Desktop/ripplefouradder/rippletest.v
// Project Name:  ripplefouradder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_ripple
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rippletest;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [3:0] s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	four_ripple uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		$monitor( "%3d ns: a+b = %d+%d = sum cout = %d %d",$time,a,b,s,c);
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 1;
		b = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 1;
		b = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 1;
		b = 2;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 2;
		b = 4;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 15;
		b = 15;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 6;
		b = 4;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 1;
		b = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 6;
		b = 8;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 2;
		b = 4;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 7;
		b = 7;

		// Wait 100 ns for global reset to finish
		#10;
		
		a = 6;
		b = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here

	end
      
endmodule

