`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2020 15:50:08
// Design Name: 
// Module Name: fib_rec
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


module fib_rec(
    input  logic [3:0] BCD_in,
    output logic       f
    );
    
    always_comb begin
        if (    BCD_in == 4'd0 || 
                BCD_in == 4'd1 ||
                BCD_in == 4'd2 ||
                BCD_in == 4'd4 ||
                BCD_in == 4'd5 ||
                BCD_in == 4'd8 ||
                BCD_in == 4'd9 ||
                BCD_in == 4'd10) begin
            f = 1'b1;
        end
        else begin
            f = 1'b0;
        end
    end
endmodule
