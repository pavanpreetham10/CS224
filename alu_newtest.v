`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:24:27 02/06/2020
// Design Name:   alu_new
// Module Name:   /home/pavanpreetham/Desktop/alu_new/alu_newtest.v
// Project Name:  alu_new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_new
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_newtest;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	reg [2:0] s;

	// Outputs
	wire co;
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	alu_new uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.co(co), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 4;
		b = 2;
		cin = 1;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4;
		b = 2;
		cin = 1;
		s = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4;
		b = 2;
		cin = 1;
		s = 2;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4;
		b = 2;
		cin = 1;
		s = 3;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4;
		b = 2;
		cin = 1;
		s = 4;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4;
		b = 2;
		cin = 1;
		s = 5;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4;
		b = 2;
		cin = 1;
		s = 6;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4;
		b = 2;
		cin = 1;
		s = 7;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

