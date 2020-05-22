`timescale 1ns/1ns
module ALU_1bit( a, b, c, cout, signal, out, less, set ) ;

input a, b, c, less ;
input [2:0] signal ;
output cout, out, set ;

wire bt ;
wire [3:0] temp ;

assign temp[0] = a & b ;

assign temp[1] = a | b ;

assign bt = b ^ signal[2] ;
FA U_FA ( a, bt, c, cout, temp[2] ) ;
assign set = temp[2] ;

assign temp[3] = less ;

//assign out = ( signal[2] )?( (signal[0])?(temp[3]):(temp[2]) ):( (signal[1])?(temp[2]):( (signal[0])?(temp[1]):(temp[0]) ) ) ;
assign out = temp[0] ;
endmodule