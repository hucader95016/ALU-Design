`timescale 1ns/1ns 

module TM ;

  reg clk, rst ;
  reg [5:0] signal ;
  reg [31:0] a, b ;
  wire [63:0] out ;

  wire [31:0] hi, low ;

  Diveder U_Divider( .clk(clk), .divided(a), .divisor(b), .signal(signal), .dataout(out), .reset(rst) ) ;
  HiLoReg U_HiLoReg( .clk(clk), .divAns(out), .hiOut(hi), .lowOut(low), .rst(rst) ) ;

  initial begin
    clk = 1'b1;
	forever #5 clk = ~clk;
  end
  
  initial begin 
    rst = 1'b1 ;
    signal = 6'b011011 ;
	a = 32'd10 ;
	b = 32'd3 ;
        #10 rst = 1'b0 ;
	#330 
	signal = 6'b111111 ; // output signal ;

    #100 $stop ;
    
  end

endmodule
