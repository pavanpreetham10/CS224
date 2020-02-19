`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:02 01/16/2020 
// Design Name: 
// Module Name:    fa 
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
module fa(a,b,cin,s,co
    );
	output s,co;
	input a,b,cin;
	wire n1,n2,n3;
	and(n1,a,b);
	xor(n2,a,b);
	xor(s,n2,cin);
	and(n3,n2,cin);
	or(co,n3,n1);
endmodule
