`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2026 17:39:29
// Design Name: 
// Module Name: FSM_Pattern_Moore
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


module FSM_Pattern_Moore( din, clk, rst, Z);
input wire din, clk, rst;
output reg Z;

parameter Sin = 3'b000, S1 = 3'b001, S10 = 3'b010, S101 = 3'b011, S1011 = 3'b111;
reg [2:0] state, next_state;
always@ ( posedge clk, posedge rst)begin
  if( rst == 1 )
  state <= Sin;
  else
  state <= next_state;
  end
  
always@ ( state, din )begin
   case(state)
   Sin :
   begin
     if( din == 1)
     next_state = S1;
     else
     next_state = Sin;
     Z = 0;
     end
     
     S1 :
        begin
          if( din == 0)
          next_state = S10;
          else
          next_state = S1;
          Z = 0;
          end
     
     S10 :
         begin
         if( din == 1)
         next_state = S101;
         else
         next_state = Sin;
         Z = 0;
         end 
             
     S101 :
           begin
           if( din == 1)
           next_state = S1011;
           else
           next_state = S10;
           Z = 0;
           end
           
     S1011 :
          begin
          if( din == 0)
          next_state = S10;
          else
          next_state = S1;
          Z = 1;
          end
          
     default :
     next_state = Sin;
     endcase  
  end 
endmodule
