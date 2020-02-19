`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:45:07 02/06/2020
// Design Name:   shift_reg
// Module Name:   /home/pavanpreetham/Desktop/shift_reg/regtest.v
// Project Name:  shift_reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regtest;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q0;
	wire q1;
	wire q2;

	// Instantiate the Unit Under Test (UUT)
	shift_reg uut (
		.d(d), 
		.clk(clk), 
		.q0(q0), 
		.q1(q1), 
		.q2(q2)
	);
	always #10 clk=~clk;
	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		d = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

