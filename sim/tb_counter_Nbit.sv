`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2020 16:18:41
// Design Name: 
// Module Name: tb_counter_Nbit
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


module tb_counter_Nbit();

    logic        clk, reset;
    logic [2:0]  count_3bit;
    logic [3:0]  count_4bit;
    logic [4:0]  count_5bit;
    
    
    counter_Nbit #(.N(3)) DUT_3bits (
        .clk(clk),
        .reset(reset),
        .count(count_3bit)
        );
        
    counter_Nbit #(.N(4)) DUT_4bits (
        .clk(clk),
        .reset(reset),
        .count(count_4bit)
        );

    counter_Nbit #(.N(5)) DUT_5bits (
        .clk(clk),
        .reset(reset),
        .count(count_5bit)
        );


    always begin
        #5
        clk = ~clk;
    end        
        
    initial begin
        clk = 0;
        reset = 1;
        #7
        reset = 0;
    end

endmodule