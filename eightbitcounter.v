`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:13:17 02/13/2020 
// Design Name: 
// Module Name:    eightbitcounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module eightbitcounter(d,q,clr,load,clk,incr
    );
	 input [7:0]d;
	 output reg [7:0]q;
	 input clr,load,clk,incr;
	 
	 fourbitcounter f1 (d[3:0],q[3:0],clr,load,clk,incr);
	 fourbitcounter f2 (d[7:4],q[7:4],clr,load,clk,(incr && d[0] && d[1] && d[2] && d[3] && !clr && !load));
	 
endmodule

module fourbitcounter(d,q,clr,load,clk,incr
    );
	input [3:0]d;
	input clk,load,clr,incr;
	output reg [3:0]q;
	reg [3:0]shift_reg;
	
	always@(posedge clk)
	begin
		if(clr) shift_reg=0;
		else if(load) 
		shift_reg=d;
		else if(incr)
		shift_reg=d+1;
	q = shift_reg;
	end
endmodule
