`timescale 1ns / 1ps


module Top_Module_tb();
    reg [15:0] IN;
    wire [7:0] OUT;

    Top_Module top1(
        .IN(IN),
        .OUT(OUT)
        );
    
    initial
    begin
        IN = 16'hF000;
        #10;
        IN = 16'hF111;
        #10;
        IN = 16'hF00F;
        #10;
        IN = 16'hFF0F;
        #10;
        IN = 16'h20F0;
        #10;
        IN = 16'hFF00;
        #10;
        IN = 16'hFE00;
        #10;
        IN = 16'hFFFF;
        #10;
        $finish;
    end
endmodule
