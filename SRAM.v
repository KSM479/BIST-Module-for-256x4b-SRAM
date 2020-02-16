`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2019 07:16:10 PM
// Design Name: 
// Module Name: SRAM
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


module SRAM(
 input [3 : 0 ]     data_in,
 input [ 7 : 0 ]  Address,
 input WE, clk,
 output [3: 0] data_out
    );
    
    reg [3:0]SRAM [255: 0];
    reg [7: 0] Address_Reg;
    always @ (posedge clk)
    begin
    if (WE)    SRAM[Address] <= data_in; 
    Address_Reg <= Address;
    end 
    assign data_out = SRAM[Address];
endmodule
