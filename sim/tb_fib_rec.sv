`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2020 15:00:00
// Design Name: 
// Module Name: tb_fib_rec
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


module tb_fib_rec();

    logic       clk;
    logic [3:0] BCD_in;
    logic       f;
    
    
    fib_rec DUT (
        .BCD_in(BCD_in),
        .f(f)
    );
    
    always begin
        #5
        clk = ~clk;
    end
    
    always_ff @(posedge clk) begin
        #1;
        BCD_in <= BCD_in + 1;
    end
    
    always_ff @(negedge clk) begin
        $display("BCD_in = %b, f = %d", BCD_in, f);
    end
    
    initial begin
        clk    = 0;
        BCD_in = 0;
    end
   
endmodule
