`timescale 1ns/1ns
module RCA32( a, b, cin, cout, sum );

input [31:0] a, b ;
input cin ;

output [31:0] sum ;
output cout ;

wire [31:0] c, w1 ;

xor ( w1[0], b[0], cin ) ;
FA fa1( .a(a[0]), .b(w1[0]), .c(cin), .cout(c[0]), .sum(sum[0]) ) ;

xor ( w1[1], b[1], cin ) ;
FA fa2( .a(a[1]), .b(w1[1]), .c(c[0]), .cout(c[1]), .sum(sum[1]) ) ;

xor ( w1[2], b[2], cin ) ;
FA fa3( .a(a[2]), .b(w1[2]), .c(c[1]), .cout(c[2]), .sum(sum[2]) ) ;

xor ( w1[3], b[3], cin ) ;
FA fa4( .a(a[3]), .b(w1[3]), .c(c[2]), .cout(c[3]), .sum(sum[3]) ) ;

xor ( w1[4], b[4], cin ) ;
FA fa5( .a(a[4]), .b(w1[4]), .c(c[3]), .cout(c[4]), .sum(sum[4]) ) ;

xor ( w1[5], b[5], cin ) ;
FA fa6( .a(a[5]), .b(w1[5]), .c(c[4]), .cout(c[5]), .sum(sum[5]) ) ;

xor ( w1[6], b[6], cin ) ;
FA fa7( .a(a[6]), .b(w1[6]), .c(c[5]), .cout(c[6]), .sum(sum[6]) ) ;

xor ( w1[7], b[7], cin ) ;
FA fa8( .a(a[7]), .b(w1[7]), .c(c[6]), .cout(c[7]), .sum(sum[7]) ) ;

xor ( w1[8], b[8], cin ) ;
FA fa9( .a(a[8]), .b(w1[8]), .c(c[7]), .cout(c[8]), .sum(sum[8]) ) ;

xor ( w1[9], b[9], cin ) ;
FA fa10( .a(a[9]), .b(w1[9]), .c(c[8]), .cout(c[9]), .sum(sum[9]) ) ;

xor ( w1[10], b[10], cin ) ;
FA fa11( .a(a[10]), .b(w1[10]), .c(c[9]), .cout(c[10]), .sum(sum[10]) ) ;

xor ( w1[11], b[11], cin ) ;
FA fa12( .a(a[11]), .b(w1[11]), .c(c[10]), .cout(c[11]), .sum(sum[11]) ) ;

xor ( w1[12], b[12], cin ) ;
FA fa13( .a(a[12]), .b(w1[12]), .c(c[11]), .cout(c[12]), .sum(sum[12]) ) ;

xor ( w1[13], b[13], cin ) ;
FA fa14( .a(a[13]), .b(w1[13]), .c(c[12]), .cout(c[13]), .sum(sum[13]) ) ;

xor ( w1[14], b[14], cin ) ;
FA fa15( .a(a[14]), .b(w1[14]), .c(c[13]), .cout(c[14]), .sum(sum[14]) ) ;

xor ( w1[15], b[15], cin ) ;
FA fa16( .a(a[15]), .b(w1[15]), .c(c[14]), .cout(c[15]), .sum(sum[15]) ) ;

xor ( w1[16], b[16], cin ) ;
FA fa17( .a(a[16]), .b(w1[16]), .c(c[15]), .cout(c[16]), .sum(sum[16]) ) ;

xor ( w1[17], b[17], cin ) ;
FA fa18( .a(a[17]), .b(w1[17]), .c(c[16]), .cout(c[17]), .sum(sum[17]) ) ;

xor ( w1[18], b[18], cin ) ;
FA fa19( .a(a[18]), .b(w1[18]), .c(c[17]), .cout(c[18]), .sum(sum[18]) ) ;

xor ( w1[19], b[19], cin ) ;
FA fa20( .a(a[19]), .b(w1[19]), .c(c[18]), .cout(c[19]), .sum(sum[19]) ) ;

xor ( w1[20], b[20], cin ) ;
FA fa21( .a(a[20]), .b(w1[20]), .c(c[19]), .cout(c[20]), .sum(sum[20]) ) ;

xor ( w1[21], b[21], cin ) ;
FA fa22( .a(a[21]), .b(w1[21]), .c(c[20]), .cout(c[21]), .sum(sum[21]) ) ;

xor ( w1[22], b[22], cin ) ;
FA fa23( .a(a[22]), .b(w1[22]), .c(c[21]), .cout(c[22]), .sum(sum[22]) ) ;

xor ( w1[23], b[23], cin ) ;
FA fa24( .a(a[23]), .b(w1[23]), .c(c[22]), .cout(c[23]), .sum(sum[23]) ) ;

xor ( w1[24], b[24], cin ) ;
FA fa25( .a(a[24]), .b(w1[24]), .c(c[23]), .cout(c[24]), .sum(sum[24]) ) ;

xor ( w1[25], b[25], cin ) ;
FA fa26( .a(a[25]), .b(w1[25]), .c(c[24]), .cout(c[25]), .sum(sum[25]) ) ;

xor ( w1[26], b[26], cin ) ;
FA fa27( .a(a[26]), .b(w1[26]), .c(c[25]), .cout(c[26]), .sum(sum[26]) ) ;

xor ( w1[27], b[27], cin ) ;
FA fa28( .a(a[27]), .b(w1[27]), .c(c[26]), .cout(c[27]), .sum(sum[27]) ) ;

xor ( w1[28], b[28], cin ) ;
FA fa29( .a(a[28]), .b(w1[28]), .c(c[27]), .cout(c[28]), .sum(sum[28]) ) ;

xor ( w1[29], b[29], cin ) ;
FA fa30( .a(a[29]), .b(w1[29]), .c(c[28]), .cout(c[29]), .sum(sum[29]) ) ;

xor ( w1[30], b[30], cin ) ;
FA fa31( .a(a[30]), .b(w1[30]), .c(c[29]), .cout(c[30]), .sum(sum[30]) ) ;

xor ( w1[31], b[31], cin ) ;
FA fa32( .a(a[31]), .b(w1[31]), .c(c[30]), .cout(cout), .sum(sum[31]) ) ;
endmodule