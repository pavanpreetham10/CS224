`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:41:01 02/13/2020
// Design Name:   fourbitcounter
// Module Name:   /home/pavanpreetham/Desktop/fourbitcounter/test1.v
// Project Name:  fourbitcounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbitcounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg [3:0] d;
	reg clr;
	reg load;
	reg clk;
	reg incr;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	fourbitcounter uut (
		.d(d), 
		.q(q), 
		.clr(clr), 
		.load(load), 
		.clk(clk), 
		.incr(incr)
	);
	initial
	for(clk=0;1;clk=~clk)
	#10;
	initial begin
		// Initialize Inputs
		d = 2;
		clr = 0;
		load = 1;
		clk = 1;
		incr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		d = 2;
		clr = 0;
		load = 1;
		incr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		d = 3;
		clr = 0;
		load = 0;
		incr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		d = 3;
		clr = 0;
		load = 0;
		incr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		d = 4;
		clr = 1;
		load = 0;
		incr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		d = 5;
		clr = 0;
		load = 1;
		incr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		d = 5;
		clr = 0;
		load = 1;
		incr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		d = 5;
		clr = 1;
		load = 0;
		incr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		d = 15;
		clr = 0;
		load = 1;
		incr = 1;

		// Wait 100 ns for global reset to finish
		#100;

        
		// Add stimulus here

	end
      
endmodule

