`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:28 02/13/2020 
// Design Name: 
// Module Name:    fourbitcounter 
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
