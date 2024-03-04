`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2024 07:08:08
// Design Name: 
// Module Name: async_seq_det
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



module async_seq_det(input in, input clk,input rst, output pos_edge,output neg_edge, output both_edge);
    reg sync_in;
    reg d_in;
    
    always @(posedge clk) begin
        if(rst) begin
            sync_in <=0;
            d_in <=0;
        end
        else begin
            sync_in <= in;
            d_in <= sync_in;
        end
    end
    
    assign pos_edge = sync_in&&(~d_in);
    assign neg_edge = (~sync_in)&&d_in;
   assign both_edge = sync_in^d_in;

endmodule
