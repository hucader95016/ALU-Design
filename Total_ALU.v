`timescale 1ns/1ns
module Total_ALU( clk, dataA, dataB, signal, dataOut, reset );
  input reset, clk ;
  input[31:0] dataA, dataB ;
  input[5:0] signal ;
  output[31:0] dataOut ;

  
  wire [5:0]  signalToAll ;
  wire [31:0] ALUOut, HiOut, LoOut, ShifterOut ;
  wire [31:0] temp ;
  wire [63:0] DivAns ;
  
  ALU_Control U_ALU_Control( .clk(clk), .inSignal(signal), .outSignal(signalToAll) ) ;

  ALU_32bits U_ALU_32bits( .a(dataA), .b(dataB), .inSignal(signalToAll), .dataOut(ALUOut) ) ;

  Diveder U_Diveder( .clk(clk), .divided(dataA), .divisor(dataB), .signal(signalToAll), .dataout(DivAns), .reset(reset) ) ;

  HiLoReg U_HiLoReg( .clk(clk), .divAns(DivAns), .hiOut(HiOut), .lowOut(LoOut), .rst(reset) ) ;

  barrel_shifter_8bit U_barrel_shifter_8bit( .a(dataA), .inputShamt(dataB), .out(ShifterOut)) ;
  
  MUX U_MUX( .signal(signalToAll), .ALU(ALUOut), .Hi( HiOut ), .Low( LoOut ), .Shifter(ShifterOut), .dataOut(temp) ) ;

  assign dataOut = temp ;

endmodule
