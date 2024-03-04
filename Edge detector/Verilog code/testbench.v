`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2024 07:14:50
// Design Name: 
// Module Name: testbench
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


module testbench();

    reg in;
    reg clk=0;
    reg rst;
    wire pos_edge,neg_edge,both_edge;
    
    //sync_seq_det dut(in,clk,rst,pos_edge,neg_edge,both_edge);
    async_seq_det dut(in,clk,rst,pos_edge,neg_edge,both_edge);
    
    always #5 clk=~clk;
    
    initial begin
        rst =1;
        in =0;
        #7 rst=0;
        #5 in=1;
        #20 in=0;
    end
        
endmodule
