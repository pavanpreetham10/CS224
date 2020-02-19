`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:32 01/30/2020 
// Design Name: 
// Module Name:    alu 
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
module alu(a,b,cin,s,co,out
    );
	 input [3:0]a;
	 input [3:0]b;
	 input cin;
	 input [2:0]s;
	 output co;
	 output [3:0]out;
	 
	 reg [3:0]ou;
	 reg cout;
	 
	 assign out=ou;
	 assign cout=co;
	 
	 always@(*)
	 begin
	  case(s)
	  3'b000: {cout,ou}=a+b+cin;
	  3'b001: {cout,ou}=a-b-cin;
	  3'b010: ou=a|b;
	  3'b011: ou=a&b;
	  3'b100: ou=a<<1;
	  3'b101: ou=a>>1;
	  3'b110: ou={a[2:0],a[3]};
	  3'b111: ou={a[0],a[3:1]};
	endcase
	end
endmodule

