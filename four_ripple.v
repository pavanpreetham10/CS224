`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:37 01/23/2020 
// Design Name: 
// Module Name:    four_ripple 
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
module four_ripple(a,b,s,c
    );
	input [3:0]a;
	input [3:0]b;
	output c;
	output [3:0]s;
	wire [2:0]co;
	fa fa1(a[0],b[0],0,s[0],co[0]);
	fa fa2(a[1],b[1],co[0],s[1],co[1]);
	fa fa3(a[2],b[2],co[1],s[2],co[2]);
	fa fa4(a[3],b[3],co[2],s[3],c);

endmodule

module fa(a,b,cin,s,co
    );
	input a,b,cin;
	output s,co;
	wire n1,n2,n3;
	and(n1,a,b);
	xor(n2,a,b);
	xor #2(s,n2,cin);
	and(n3,n2,cin);
	or #2(co,n3,n1);
	
endmodule
