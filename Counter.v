`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2019 07:34:52 PM
// Design Name: 
// Module Name: Counter
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


module Counter(
input clk,
output [7: 0] Counter_Address,
output WE,
output [3 : 0] MSB
    );
    
    reg [9 : 0] Counter =0;
    always @ (posedge clk)
    begin
    
    Counter <= Counter +1 ;
    if (Counter == 1023) 
    begin
    Counter <= 1023; 
    end
    end
   
assign WE =(Counter <256 || (Counter> 511 && Counter < 768)) ? 1 : 0;
assign Counter_Address =  Counter[7:0]; 
assign MSB = (Counter[9])? 1 :0;       
    
endmodule
