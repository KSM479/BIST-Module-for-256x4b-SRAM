`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2019 10:04:03 PM
// Design Name: 
// Module Name: March_Comparator
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


module March_Comparator(input clk,enable,
input [3:0] Comp_in1,Comp_in2,
output  Comp_out
    );
    reg [3:0] Compared;
    reg [ 3: 0 ] Comparing;
    always @(posedge clk) 
    begin
    Comparing <= Comp_in2;
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
