`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2019 02:03:49 AM
// Design Name: 
// Module Name: MarchLR_SRAM
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


module MarchLR_SRAM(

 input [3 : 0 ]     data_in,
 input [ 7 : 0 ]  Address,
 input WE, clk,
 output  reg [3: 0] data_out
    );
    
    reg [3:0]SRAM [255: 0];
    reg [7: 0] Address_Reg;

    always @ (*)
    begin
    if(!WE) data_out <= SRAM[Address];
    if (WE)    SRAM[Address] <= data_in; 
    Address_Reg <= Address;
    end 
    
endmodule
