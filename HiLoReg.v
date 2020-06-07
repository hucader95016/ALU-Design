`timescale 1ns/1ns

module HiLoReg( clk, divAns, hiOut, lowOut, rst ) ;
  input clk, rst ;
  input [63:0] divAns ;
  output [31:0] hiOut, lowOut ;

  reg [63:0] temp ;

  always@( posedge clk or rst ) begin
    if ( rst ) begin
      temp = 64'b0 ;
    end

    else begin 
      temp = divAns ;
    end 
  end

  assign lowOut = temp[63:32] ;
  assign hiOut = temp[31:0] ;
endmodule
