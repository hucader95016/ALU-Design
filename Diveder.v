`timescale 1ns/1ns 

module Diveder( clk, divided, divisor, signal, dataout, reset ) ; // divided 被除數 divisor 除數
  // 定義接線
  input clk, reset ;
  input [5:0] signal ;
  input [31:0] divided, divisor ;
  output[63:0] dataout ;
  
  reg start ;
  reg [31:0] quot ;
  reg [63:0] divr, rem ; // 擴充除數被除數
  reg [63:0] temp ;
  reg [6:0] counter ;
  
  parameter DIVU = 6'b011011;
  parameter OUT = 6'b111111;
  
  always@( posedge clk or reset ) begin 
    if ( reset ) begin
      // initialize
      start = 1'b0 ;
      quot = 32'b0 ;
      divr = 64'b0 ;
      rem = 64'b0 ;
      temp = 64'b0 ;
      counter = 7'd1 ;
    end
	
    else begin

      case ( signal )
      DIVU : begin

        if ( start == 1'b0 ) begin

        //$display("reset\n") ;
	divr = { divisor, 32'b0 } ;
	rem = { 32'b0, divided } ;
	start <= start + 1'b1 ;

        //$display("%d %d\n", quot, rem[31:0]) ;
      	end

        counter = counter + 1'b1 ;
        quot = { quot[30:0], 1'b0 } ; // shift left
        rem = rem - divr ;

	if ( rem[63] == 0 ) begin // positive
	  quot = quot + 1 ;		  
	end

        else begin // negetive
          rem = rem + divr ; 
        end

        divr = { 1'b0, divr[63:1] } ; // shift right
      end
	  
      OUT : begin
        //$display("%d\n", counter) ;
	temp[63:32] = quot ;
        temp[31:0] = rem[31:0] ;
      end
      endcase
    end
  end // always block

  assign dataout = temp ;
endmodule
