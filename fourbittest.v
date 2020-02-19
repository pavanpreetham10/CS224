`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:58:03 02/06/2020
// Design Name:   fourbit_reg
// Module Name:   /home/pavanpreetham/Desktop/shift_reg/fourbittest.v
// Project Name:  shift_reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbit_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fourbittest;

	// Inputs
	reg [3:0] d;
	reg clr;
	reg load;
	reg clk;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	fourbit_reg uut (
		.d(d), 
		.q(q), 
		.clr(clr), 
		.load(load), 
		.clk(clk)
	);
	always #10 clk=~clk;
	initial begin
		// Initialize Inputs
		d = 4;
		clr = 0;
		load = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		d = 5;
		clr = 1;
		load = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

