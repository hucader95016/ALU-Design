`timescale 1ns/1ns
module TM_TotalALU_test ;
  reg [3:0] a, b ;
  reg [2:0] signal ;
  wire [3:0] out ;
  
  parameter t = 200 ;
  TotalALU U_totalALU( .a(a), .b(b), .signal(signal), .out(out) ) ;
  
  initial begin
    #t // and
      signal = 3'b000 ;
      a = 4'b1110 ;
      b = 4'b0101 ;	

    #t 	
      a = 4'b0111 ;
      b = 4'b0110 ;

    #t 	
      a = 4'b0110 ;
      b = 4'b0100 ;

    #t // or
      signal = 3'b001 ;
      a = 4'b1011 ;
      b = 4'b0000 ;
    
    #t
      a = 4'b1010 ;
      b = 4'b1000 ;
	 
    #t // add
      signal = 3'b010 ;
      a = 4'b0010 ;
      b = 4'b1100 ;
	  
    #t 
      a = 4'b1000 ;
      b = 4'b1111 ;

    #t 
      a = 4'b1000 ;
      b = 4'b0001 ;

    #t // sub 
      signal = 3'b110 ;
      a = 4'b1011 ;
      b = 4'b0010 ;

    #t 	
      a = 4'b0110 ;
      b = 4'b0111 ;
	  
    #t // slt
      signal = 3'b111 ;
      a = 4'b0010 ;
      b = 4'b0101 ;	 
	  
    #t 
	  $stop;
  end 
endmodule 
