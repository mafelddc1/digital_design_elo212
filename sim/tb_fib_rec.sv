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
    
    logic        clk, reset;
    logic [3:0]  BCD_in;
    logic        f, fexpected;
    
    logic [31:0] vectornum, errors;
    logic [4:0]  testvector [100:0];
    
    
    
    fib_rec DUT (BCD_in, f);

    always begin
        clk = 1;
        #5;
        clk = 0;
        #5;
    end
    
    initial begin
        // $readmemb("/apps/projects/sources/sim/fib_rec.tv", testvector);
        $readmemb("fib_rec.mem", testvector);
        vectornum = 0;
        errors = 0;
        reset = 1;
        
        #10;
        reset = 0;
        
        // 0
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;
        
        // 1
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;


        // 2
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;

        // 3
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;

        // 4
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;

        // 5
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;

        // 6
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;

        // 7
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;

        // 8
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;

        // 9
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;

        // 10
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;
        

        // 11
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;


        // 12
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;


        // 13
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;



        // 14
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;


        // 15
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;


        // 16
        #10;
        {BCD_in, fexpected} = testvector[vectornum];
        #1;
        $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
        vectornum = vectornum + 1;
        
        
        
        #5
        $finish;
    end

/*    
    // Canto Subida -> Actualizar entrada
    always @(posedge clk) begin
        #1;
        {BCD_in, fexpected} = testvector[vectornum];
    end
    
    // Canto Bajada -> Revisar salida
    always @(negedge clk) begin
        if (~reset) begin
            $display("t: %t, BCD_in = %d, fexpected = %b", $realtime, BCD_in, fexpected);
            
            vectornum = vectornum + 1;
            
            if (testvector[vectornum] === 5'bx) begin
                //$finish;
            end
        end
    end

*/  
endmodule
