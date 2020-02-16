`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2019 09:36:33 PM
// Design Name: 
// Module Name: March_Counter
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
// The way this counter should work is that from 0 to 256 it should write 0. 
// Hence WE is 1 when counter_address is 0 to 256. And MSB is 0000. 
//
// After that we will be Reading 0 followed by writing 1 to the same address location.
//////////////////////////////////////////////////////////////////////////////////


module March_Counter(
input clk,
output  reg [7: 0] Counter_Address,
output reg  WE,
output  reg [3 : 0] MSB,
output  reg [3 : 0 ]Comp_in_from_counter 

    );
    
     reg [8 : 0] Counter =0;
     reg [7 : 0] WE_Counter =0;
     reg [7 : 0] Not_WE_Counter =0;
     reg [3:0] count=0;
     
always @ (posedge clk) 

begin 
Counter_Address <= Counter;
if (count ==10) 
begin 
Counter <= Counter - 1;

MSB <= 1;
Comp_in_from_counter<= 0;

end 
if (count ==9)
begin 
WE <=0;
count <= 10;
end 
if (count ==8)
begin 
Counter <= Counter - 1;
WE <=1;
MSB <= 0;
count <=7;
Comp_in_from_counter<= 1;
 if (Counter == 0 ) 
 begin
 Counter <= 255;
 count <= 9; 

 end

end 
if (count ==7) 
begin 
WE<= 0;
count <=8;
end
if (count == 6)
begin 
Counter <= Counter - 1;
WE <=1;
MSB <= 1;
count <=5;
Comp_in_from_counter<= 0;
 if (Counter == 0 ) 
 begin
 Counter <= 255;
 count <= 7; 

 end

end

if (count == 5) 
begin 
WE <= 0;
count <= 6;
end 

if (count ==4)
begin 
Counter <= Counter + 1;
WE <=1;
MSB <= 0;
count <=3;
Comp_in_from_counter<= 1;
 if (Counter == 255 ) 
 begin
 Counter <= 255;
 count <= 5; 

 end

end
if (count ==3 ) 
begin
WE<= 0;
count<=4; 
end
if (count ==2)
begin 
WE <= 0;
count <=1;
end

if (count == 1)
begin
Counter <= Counter + 1;
WE <=1;
MSB <= 1;
count <=2;
Comp_in_from_counter<= 0;
 if (Counter == 255 ) 
 begin
 Counter <= 0;
 count <= 3; 

 end
end 

if (count == 0)
begin
Counter <= Counter + 1;
WE <= 1;
//Counter_Address <= Counter [7:0];
MSB <= 0;
 if (Counter == 255 ) 
 begin
 Counter <= 0;
 count <= 1; 

 end
end 
end
//assign WE = 1;
//assign MSB = 0;
//assign Comp_in_from_counter = 0;
endmodule
