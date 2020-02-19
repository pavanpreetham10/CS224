`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:28 02/06/2020 
// Design Name: 
// Module Name:    fourbit_reg 
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
module fourbit_reg(d,q,clr,load,clk
    );
	 input [3:0]d;
	 input clk,load,clr;
	 output reg [3:0]q;
	 always@(posedge clk)
	 begin
		if(clr) q=0;
		else if(load) q=d;
	end


endmodule


