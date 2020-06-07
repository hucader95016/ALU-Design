`timescale 1ns/1ns
module ALU_32bits( a, b, inSignal, dataOut ) ;
  input [31:0] a, b ;
  input [5:0] inSignal ;
  output [31:0] dataOut ;  
  
  wire [31:0] out ;
  wire [31:0] cout ;
  wire less_set, cin ;
  wire [2:0] signal ;
  wire signalSlt ;


  assign signal = (inSignal == 6'b100100)?(3'b000):
                  (inSignal == 6'b100101)?(3'b001):
                  (inSignal == 6'b100000)?(3'b010):
                  (inSignal == 6'b100010)?(3'b110):(3'b111);

  assign cin = (signal==3'b110)?(1):(0) ;


  ALU_1bit alu1( .a(a[0]), .b(b[0]), .out(out[0]), .signal(signal), .c(cin), .cout(cout[0]), .less(less_set), .set() ) ;
  ALU_1bit alu2( .a(a[1]), .b(b[1]), .out(out[1]), .signal(signal), .c(cout[0]), .cout(cout[1]), .less(1'b0), .set() ) ;
  ALU_1bit alu3( .a(a[2]), .b(b[2]), .out(out[2]), .signal(signal), .c(cout[1]), .cout(cout[2]), .less(1'b0), .set() ) ;
  ALU_1bit alu4( .a(a[3]), .b(b[3]), .out(out[3]), .signal(signal), .c(cout[2]), .cout(cout[3]), .less(1'b0), .set() ) ;
  ALU_1bit alu5( .a(a[4]), .b(b[4]), .out(out[4]), .signal(signal), .c(cout[3]), .cout(cout[4]), .less(1'b0), .set() ) ;
  ALU_1bit alu6( .a(a[5]), .b(b[5]), .out(out[5]), .signal(signal), .c(cout[4]), .cout(cout[5]), .less(1'b0), .set() ) ;
  ALU_1bit alu7( .a(a[6]), .b(b[6]), .out(out[6]), .signal(signal), .c(cout[5]), .cout(cout[6]), .less(1'b0), .set() ) ;
  ALU_1bit alu8( .a(a[7]), .b(b[7]), .out(out[7]), .signal(signal), .c(cout[6]), .cout(cout[7]), .less(1'b0), .set() ) ;
  ALU_1bit alu9( .a(a[8]), .b(b[8]), .out(out[8]), .signal(signal), .c(cout[7]), .cout(cout[8]), .less(1'b0), .set() ) ;
  ALU_1bit alu10( .a(a[9]), .b(b[9]), .out(out[9]), .signal(signal), .c(cout[8]), .cout(cout[9]), .less(1'b0), .set() ) ;
  ALU_1bit alu11( .a(a[10]), .b(b[10]), .out(out[10]), .signal(signal), .c(cout[9]), .cout(cout[10]), .less(1'b0), .set() ) ;
  ALU_1bit alu12( .a(a[11]), .b(b[11]), .out(out[11]), .signal(signal), .c(cout[10]), .cout(cout[11]), .less(1'b0), .set() ) ;
  ALU_1bit alu13( .a(a[12]), .b(b[12]), .out(out[12]), .signal(signal), .c(cout[11]), .cout(cout[12]), .less(1'b0), .set() ) ;
  ALU_1bit alu14( .a(a[13]), .b(b[13]), .out(out[13]), .signal(signal), .c(cout[12]), .cout(cout[13]), .less(1'b0), .set() ) ;
  ALU_1bit alu15( .a(a[14]), .b(b[14]), .out(out[14]), .signal(signal), .c(cout[13]), .cout(cout[14]), .less(1'b0), .set() ) ;
  ALU_1bit alu16( .a(a[15]), .b(b[15]), .out(out[15]), .signal(signal), .c(cout[14]), .cout(cout[15]), .less(1'b0), .set() ) ;
  ALU_1bit alu17( .a(a[16]), .b(b[16]), .out(out[16]), .signal(signal), .c(cout[15]), .cout(cout[16]), .less(1'b0), .set() ) ;
  ALU_1bit alu18( .a(a[17]), .b(b[17]), .out(out[17]), .signal(signal), .c(cout[16]), .cout(cout[17]), .less(1'b0), .set() ) ;
  ALU_1bit alu19( .a(a[18]), .b(b[18]), .out(out[18]), .signal(signal), .c(cout[17]), .cout(cout[18]), .less(1'b0), .set() ) ;
  ALU_1bit alu20( .a(a[19]), .b(b[19]), .out(out[19]), .signal(signal), .c(cout[18]), .cout(cout[19]), .less(1'b0), .set() ) ;
  ALU_1bit alu21( .a(a[20]), .b(b[20]), .out(out[20]), .signal(signal), .c(cout[19]), .cout(cout[20]), .less(1'b0), .set() ) ;
  ALU_1bit alu22( .a(a[21]), .b(b[21]), .out(out[21]), .signal(signal), .c(cout[20]), .cout(cout[21]), .less(1'b0), .set() ) ;
  ALU_1bit alu23( .a(a[22]), .b(b[22]), .out(out[22]), .signal(signal), .c(cout[21]), .cout(cout[22]), .less(1'b0), .set() ) ;
  ALU_1bit alu24( .a(a[23]), .b(b[23]), .out(out[23]), .signal(signal), .c(cout[22]), .cout(cout[23]), .less(1'b0), .set() ) ;
  ALU_1bit alu25( .a(a[24]), .b(b[24]), .out(out[24]), .signal(signal), .c(cout[23]), .cout(cout[24]), .less(1'b0), .set() ) ;
  ALU_1bit alu26( .a(a[25]), .b(b[25]), .out(out[25]), .signal(signal), .c(cout[24]), .cout(cout[25]), .less(1'b0), .set() ) ;
  ALU_1bit alu27( .a(a[26]), .b(b[26]), .out(out[26]), .signal(signal), .c(cout[25]), .cout(cout[26]), .less(1'b0), .set() ) ;
  ALU_1bit alu28( .a(a[27]), .b(b[27]), .out(out[27]), .signal(signal), .c(cout[26]), .cout(cout[27]), .less(1'b0), .set() ) ;
  ALU_1bit alu29( .a(a[28]), .b(b[28]), .out(out[28]), .signal(signal), .c(cout[27]), .cout(cout[28]), .less(1'b0), .set() ) ;
  ALU_1bit alu30( .a(a[29]), .b(b[29]), .out(out[29]), .signal(signal), .c(cout[28]), .cout(cout[29]), .less(1'b0), .set() ) ;
  ALU_1bit alu31( .a(a[30]), .b(b[30]), .out(out[30]), .signal(signal), .c(cout[29]), .cout(cout[30]), .less(1'b0), .set() ) ;
  ALU_1bit alu32( .a(a[31]), .b(b[31]), .out(out[31]), .signal(signal), .c(cout[30]), .cout(cout[31]), .less(1'b0), .set(less_set) ) ;
  
 

  assign dataOut = (a==b)?(32'd0):(out) ;

endmodule 
