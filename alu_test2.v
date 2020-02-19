`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:16:37 02/06/2020
// Design Name:   alu
// Module Name:   /home/pavanpreetham/Desktop/alu/alu_test2.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_test2;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	reg [2:0] s;

	// Outputs
	wire co;
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
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
		cin = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4;
		b = 2;
		cin = 0;
		s = 1;

		// Wait 100 ns for global reset to finish
		#100;

        
		// Add stimulus here

	end
      
endmodule

