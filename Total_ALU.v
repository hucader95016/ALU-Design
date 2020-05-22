`timescale 1ns/1ns
module TotalALU( a, b, signal, out ) ;
  input [3:0] a, b ;
  input [2:0] signal ;
  output [3:0] out ;  
  
  wire [3:0] cout ;
  wire less_set ;
  
  ALU_1bit alu1( .a(a[0]), .b(b[0]), .out(out[0]), .signal(signal), .c(0), .cout(cout[0]), .less(less_set), .set() ) ;
  //ALU_1bit alu2( .a(a[1]), .b(b[1]), .out(out[1]), .signal(signal), .c(cout[0]), .cout(cout[1]), .less(0), .set() ) ;
  //ALU_1bit alu3( .a(a[2]), .b(b[2]), .out(out[2]), .signal(signal), .c(cout[1]), .cout(cout[2]), .less(0), .set() ) ;
  //ALU_1bit alu4( .a(a[3]), .b(b[3]), .out(out[3]), .signal(signal), .c(cout[2]), .cout(cout[3]), .less(0), .set(less_set) ) ;
  
endmodule 