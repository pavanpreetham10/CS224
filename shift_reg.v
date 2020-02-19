`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:44 02/06/2020 
// Design Name: 
// Module Name:    shift_reg 
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
module shift_reg(d,clk,q0,q1,q2
    );
	input d,clk;
	output reg q0,q1,q2;
	
	always@(posedge clk)
	begin
	q2=q1;
	q1=q0;
	q0=d;
	end
endmodule

