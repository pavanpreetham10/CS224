`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:51 01/16/2020
// Design Name:   fa
// Module Name:   /home/pavanpreetham/Desktop/fulladder/fatest.v
// Project Name:  fulladder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fatest;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	fa uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		a = 1;
		b = 0;
		cin = 1;
		#100;
		
		a = 1;
		b = 1;
		cin = 1;
		#100;
		
		a = 0;
		b = 0;
		cin = 1;
		#100;
		
		a = 1;
		b = 0;
		cin = 0;
		#100;
		
		// Add stimulus here

	end
      
endmodule

