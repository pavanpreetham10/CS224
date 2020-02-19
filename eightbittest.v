`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:48 02/13/2020
// Design Name:   eightbitcounter
// Module Name:   /home/pavanpreetham/Desktop/fourbitcounter/eightbittest.v
// Project Name:  fourbitcounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eightbitcounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eightbittest;

	// Inputs
	reg [7:0] d;
	reg clr;
	reg load;
	reg clk;
	reg incr;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	eightbitcounter uut (
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

