`timescale 1ns/1ns
module MUX( signal, ALU, Hi, Low, Shifter, dataOut );
  input[5:0] signal ;
  input[31:0] ALU, Hi, Low, Shifter ; 
  output[31:0] dataOut ;

  assign dataOut = (signal == 6'b010000 )?(Hi):
                   (signal == 6'b010010 )?(Low):
                   (signal == 6'b000010 )?(Shifter):(ALU) ;

endmodule 