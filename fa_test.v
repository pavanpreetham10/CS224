`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:43:50 01/23/2020
// Design Name:   fa
// Module Name:   /home/pavanpreetham/Desktop/fulladder/fa_test.v
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

module fa_test;

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
        
		// Add stimulus here

	end
      
endmodule

