`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    16:58:24 02/09/2023 
// Design Name: 
// Module Name:    roundrobin_arbiter 
// Author Name:    Ummidi Chandrika

//////////////////////////////////////////////////////////////////////////////////
module roundrobin_arbiter(
input clk,rst_n,
input [3:0] REQ,
output reg [3:0] GNT
    );
    reg[2:0] pr_state;
    reg[2:0] nxt_state;
    
    parameter [2:0] Sideal = 3'b000;
    parameter [2:0]     S0 = 3'b001;
    parameter [2:0]     S1 = 3'b010;
    parameter [2:0]     S2 = 3'b011;
    parameter [2:0]     S3 = 3'b100;
    
    always @(posedge clk or negedge rst_n)
    
    begin
    if(!rst_n)
     pr_state <= Sideal;
     else 
      pr_state <=nxt_state;
     end
      
    always@(*)
    begin   
          case(pr_state) 
            Sideal:
                     begin 
                         if(REQ[0])
                             nxt_state = S0;
                         else if (REQ[1])
                              nxt_state = S1;
                         else if (REQ[2])
                            nxt_state = S2;
                         else if (REQ[3])
                            nxt_state = S3;
                          else 
                             nxt_state =Sideal;
                     end 
               S0: 
                     begin   
                         if (REQ[1])
                            nxt_state = S1;
                         else if (REQ[2])
                            nxt_state = S2;
                         else if (REQ[3])
                              nxt_state = S3;
                         else if(REQ[0])
                             nxt_state =S0;
                         else 
                             nxt_state =Sideal;
                     end 
            
               S1: 
                     begin   
                          if (REQ[2])
                            nxt_state = S2;
                         else if (REQ[3])
                              nxt_state = S3;
                         else if(REQ[0])
                             nxt_state =S0;
                           else if (REQ[1])
                            nxt_state = S1;
                            else 
                             nxt_state =Sideal;
                     end 
               S2: 
                     begin   
                        if (REQ[3])
                              nxt_state = S3;
                         else if(REQ[0])
                             nxt_state =S0;
                           else if (REQ[1])
                            nxt_state = S1;
                            else if (REQ[2])
                            nxt_state = S2;
                            else 
                             nxt_state =Sideal;
                     end 
                 S3: 
                     begin   
                            if(REQ[0])
                             nxt_state =S0;
                           else if (REQ[1])
                            nxt_state = S1;
                            else if (REQ[2])
                            nxt_state = S2;
                            else if (REQ[3])
                              nxt_state = S3;
                            else 
                             nxt_state =Sideal;
                     end 
                    default: 
                     begin 
                         if(REQ[0])
                             nxt_state = S0;
                         else if (REQ[1])
                              nxt_state = S1;
                         else if (REQ[2])
                            nxt_state = S2;
                         else if (REQ[3])
                            nxt_state = S3;
                          else 
                             nxt_state =Sideal;
                    end
       endcase         
         
 end         
          
    always @(*)
     begin
        case (pr_state)
        S0: GNT=4'b0001;
        S1: GNT=4'b0010;
        S2: GNT=4'b0011;
        S3: GNT=4'b0100;
        default: GNT=4'b0000;
        endcase
     end
    

    
endmodule 
