`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:18 01/23/2020 
// Design Name: 
// Module Name:    CLA_adder 
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
module CLA_Adder(a,b,cin,sum,cout);
	input[3:0] a,b;
	input cin;
	output [3:0] sum;
	output cout;
	wire p0,p1,p2,p3,g0,g1,g2,g3,c1,c2,c3,c4;
	assign #1 p0=(a[0]^b[0]);
	assign #1 p1=(a[1]^b[1]);
	assign #1 p2=(a[2]^b[2]);
	assign #1 p3=(a[3]^b[3]);
	assign #1 g0=(a[0]&b[0]);
	assign #1 g1=(a[1]&b[1]);
	assign #1 g2=(a[2]&b[2]);
	assign #1 g3=(a[3]&b[3]);
	assign c0=cin;
	assign #2 c1=g0|(p0&cin);
	assign #2 c2=g1|(p1&g0)|(p1&p0&cin);
	assign #2 c3=g2|(p2&g1)|(p2&p1&g0)|(p1&p1&p0&cin);
	assign #2 c4=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&cin);
	assign #1 sum[0]=p0^c0;
	assign #1 sum[1]=p1^c1;
	assign #1 sum[2]=p2^c2;
	assign #1 sum[3]=p3^c3;
	assign cout=c4;
			 
endmodule
