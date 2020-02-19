`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:15 01/30/2020 
// Design Name: 
// Module Name:    mux 
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
module mux(i0,i1,i2,i3,s0,s1,out
    );
	input i0,i1,i2,i3,s0,s1;
	output out;
	assign out=( i0&(~s0)&(~s1) | i1&(~s0)&(s1) | i2&(s0)&(~s1) | i3&(s0)&(s1));
	
endmodule
