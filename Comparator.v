`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2019 08:26:57 PM
// Design Name: 
// Module Name: Comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Comparator( input clk,enable,
input [3:0] Comp_in1,Comp_in2,
output  Comp_out
    );
    reg [3:0] Compared;
    always @(posedge clk) 
    begin
    if(!enable)
    begin
    Compared <= Comp_in1^Comp_in2;
    end
    else begin
    Compared <= Compared;
    end
    end
    assign Comp_out = (Compared == 0)? 0:1;
endmodule
