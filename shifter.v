`timescale 1ns/1ns
module barrel_shifter_8bit (a, shamt, out);
  input  [31:0] a;
  input [4:0] shamt;
  output [31:0] out;
  
  wire [31:0] temp1, temp2, temp3, temp4 ;
  
// 1bit shift right
mux2X1  ins_31 (.in0(a[31]),.in1(1'b0),.sel(shamt[0]),.out(temp1[31]));
mux2X1  ins_30 (.in0(a[30]),.in1(a[31]),.sel(shamt[0]),.out(temp1[30]));
mux2X1  ins_29 (.in0(a[29]),.in1(a[30]),.sel(shamt[0]),.out(temp1[29]));
mux2X1  ins_28 (.in0(a[28]),.in1(a[29]),.sel(shamt[0]),.out(temp1[28]));
mux2X1  ins_27 (.in0(a[27]),.in1(a[28]),.sel(shamt[0]),.out(temp1[27]));
mux2X1  ins_26 (.in0(a[26]),.in1(a[27]),.sel(shamt[0]),.out(temp1[26]));
mux2X1  ins_25 (.in0(a[25]),.in1(a[26]),.sel(shamt[0]),.out(temp1[25]));
mux2X1  ins_24 (.in0(a[24]),.in1(a[25]),.sel(shamt[0]),.out(temp1[24]));
mux2X1  ins_23 (.in0(a[23]),.in1(a[24]),.sel(shamt[0]),.out(temp1[23]));
mux2X1  ins_22 (.in0(a[22]),.in1(a[23]),.sel(shamt[0]),.out(temp1[22]));
mux2X1  ins_21 (.in0(a[21]),.in1(a[22]),.sel(shamt[0]),.out(temp1[21]));
mux2X1  ins_20 (.in0(a[20]),.in1(a[21]),.sel(shamt[0]),.out(temp1[20]));
mux2X1  ins_19 (.in0(a[19]),.in1(a[20]),.sel(shamt[0]),.out(temp1[19]));
mux2X1  ins_18 (.in0(a[18]),.in1(a[19]),.sel(shamt[0]),.out(temp1[18]));
mux2X1  ins_17 (.in0(a[17]),.in1(a[18]),.sel(shamt[0]),.out(temp1[17]));
mux2X1  ins_16 (.in0(a[16]),.in1(a[17]),.sel(shamt[0]),.out(temp1[16]));
mux2X1  ins_15 (.in0(a[15]),.in1(a[16]),.sel(shamt[0]),.out(temp1[15]));
mux2X1  ins_14 (.in0(a[14]),.in1(a[15]),.sel(shamt[0]),.out(temp1[14]));
mux2X1  ins_13 (.in0(a[13]),.in1(a[14]),.sel(shamt[0]),.out(temp1[13]));
mux2X1  ins_12 (.in0(a[12]),.in1(a[13]),.sel(shamt[0]),.out(temp1[12]));
mux2X1  ins_11 (.in0(a[11]),.in1(a[12]),.sel(shamt[0]),.out(temp1[11]));
mux2X1  ins_10 (.in0(a[10]),.in1(a[11]),.sel(shamt[0]),.out(temp1[10]));
mux2X1  ins_09 (.in0(a[9]),.in1(a[10]),.sel(shamt[0]),.out(temp1[9]));
mux2X1  ins_08 (.in0(a[8]),.in1(a[9]),.sel(shamt[0]),.out(temp1[8]));
mux2X1  ins_07 (.in0(a[7]),.in1(a[8]),.sel(shamt[0]),.out(temp1[7]));
mux2X1  ins_06 (.in0(a[6]),.in1(a[7]),.sel(shamt[0]),.out(temp1[6]));
mux2X1  ins_05 (.in0(a[5]),.in1(a[6]),.sel(shamt[0]),.out(temp1[5]));
mux2X1  ins_04 (.in0(a[4]),.in1(a[5]),.sel(shamt[0]),.out(temp1[4]));
mux2X1  ins_03 (.in0(a[3]),.in1(a[4]),.sel(shamt[0]),.out(temp1[3]));
mux2X1  ins_02 (.in0(a[2]),.in1(a[3]),.sel(shamt[0]),.out(temp1[2]));
mux2X1  ins_01 (.in0(a[1]),.in1(a[2]),.sel(shamt[0]),.out(temp1[1]));
mux2X1  ins_00 (.in0(a[0]),.in1(a[1]),.sel(shamt[0]),.out(temp1[0]));
 
// 2bit shift right
mux2X1  ins_63 (.in0(temp1[31]),.in1(1'b0),.sel(shamt[1]),.out(temp2[31]));
mux2X1  ins_62 (.in0(temp1[30]),.in1(1'b0),.sel(shamt[1]),.out(temp2[30]));
mux2X1  ins_61 (.in0(temp1[29]),.in1(temp1[31]),.sel(shamt[1]),.out(temp2[29]));
mux2X1  ins_60 (.in0(temp1[28]),.in1(temp1[30]),.sel(shamt[1]),.out(temp2[28]));
mux2X1  ins_59 (.in0(temp1[27]),.in1(temp1[29]),.sel(shamt[1]),.out(temp2[27]));
mux2X1  ins_58 (.in0(temp1[26]),.in1(temp1[28]),.sel(shamt[1]),.out(temp2[26]));
mux2X1  ins_57 (.in0(temp1[25]),.in1(temp1[27]),.sel(shamt[1]),.out(temp2[25]));
mux2X1  ins_56 (.in0(temp1[24]),.in1(temp1[26]),.sel(shamt[1]),.out(temp2[24])); 
mux2X1  ins_55 (.in0(temp1[23]),.in1(temp1[25]),.sel(shamt[1]),.out(temp2[23]));
mux2X1  ins_54 (.in0(temp1[22]),.in1(temp1[24]),.sel(shamt[1]),.out(temp2[22]));
mux2X1  ins_53 (.in0(temp1[21]),.in1(temp1[23]),.sel(shamt[1]),.out(temp2[21]));
mux2X1  ins_52 (.in0(temp1[20]),.in1(temp1[22]),.sel(shamt[1]),.out(temp2[20]));
mux2X1  ins_51 (.in0(temp1[19]),.in1(temp1[21]),.sel(shamt[1]),.out(temp2[19]));
mux2X1  ins_50 (.in0(temp1[18]),.in1(temp1[20]),.sel(shamt[1]),.out(temp2[18]));
mux2X1  ins_49 (.in0(temp1[17]),.in1(temp1[19]),.sel(shamt[1]),.out(temp2[17]));
mux2X1  ins_48 (.in0(temp1[16]),.in1(temp1[18]),.sel(shamt[1]),.out(temp2[16])); 
mux2X1  ins_47 (.in0(temp1[15]),.in1(temp1[17]),.sel(shamt[1]),.out(temp2[15]));
mux2X1  ins_46 (.in0(temp1[14]),.in1(temp1[16]),.sel(shamt[1]),.out(temp2[14]));
mux2X1  ins_45 (.in0(temp1[13]),.in1(temp1[15]),.sel(shamt[1]),.out(temp2[13]));
mux2X1  ins_44 (.in0(temp1[12]),.in1(temp1[14]),.sel(shamt[1]),.out(temp2[12]));
mux2X1  ins_43 (.in0(temp1[11]),.in1(temp1[13]),.sel(shamt[1]),.out(temp2[11]));
mux2X1  ins_42 (.in0(temp1[10]),.in1(temp1[12]),.sel(shamt[1]),.out(temp2[10]));
mux2X1  ins_41 (.in0(temp1[9]),.in1(temp1[11]),.sel(shamt[1]),.out(temp2[9]));
mux2X1  ins_40 (.in0(temp1[8]),.in1(temp1[10]),.sel(shamt[1]),.out(temp2[8])); 
mux2X1  ins_39 (.in0(temp1[7]),.in1(temp1[9]),.sel(shamt[1]),.out(temp2[7]));
mux2X1  ins_38 (.in0(temp1[6]),.in1(temp1[8]),.sel(shamt[1]),.out(temp2[6]));
mux2X1  ins_37 (.in0(temp1[5]),.in1(temp1[7]),.sel(shamt[1]),.out(temp2[5]));
mux2X1  ins_36 (.in0(temp1[4]),.in1(temp1[6]),.sel(shamt[1]),.out(temp2[4]));
mux2X1  ins_35 (.in0(temp1[3]),.in1(temp1[5]),.sel(shamt[1]),.out(temp2[3]));
mux2X1  ins_34 (.in0(temp1[2]),.in1(temp1[4]),.sel(shamt[1]),.out(temp2[2]));
mux2X1  ins_33 (.in0(temp1[1]),.in1(temp1[3]),.sel(shamt[1]),.out(temp2[1]));
mux2X1  ins_32 (.in0(temp1[0]),.in1(temp1[2]),.sel(shamt[1]),.out(temp2[0])); 
 
// 4bit shift right
mux2X1  ins_95 (.in0(temp2[31]),.in1(1'b0),.sel(shamt[2]),.out(temp3[31]));
mux2X1  ins_94 (.in0(temp2[30]),.in1(1'b0),.sel(shamt[2]),.out(temp3[30]));
mux2X1  ins_93 (.in0(temp2[29]),.in1(1'b0),.sel(shamt[2]),.out(temp3[29]));
mux2X1  ins_92 (.in0(temp2[28]),.in1(1'b0),.sel(shamt[2]),.out(temp3[28]));
mux2X1  ins_91 (.in0(temp2[27]),.in1(temp2[31]),.sel(shamt[2]),.out(temp3[27]));
mux2X1  ins_90 (.in0(temp2[26]),.in1(temp2[30]),.sel(shamt[2]),.out(temp3[26]));
mux2X1  ins_89 (.in0(temp2[25]),.in1(temp2[29]),.sel(shamt[2]),.out(temp3[25]));
mux2X1  ins_88 (.in0(temp2[24]),.in1(temp2[28]),.sel(shamt[2]),.out(temp3[24]));
mux2X1  ins_87 (.in0(temp2[23]),.in1(temp2[27]),.sel(shamt[2]),.out(temp3[23]));
mux2X1  ins_86 (.in0(temp2[22]),.in1(temp2[26]),.sel(shamt[2]),.out(temp3[22]));
mux2X1  ins_85 (.in0(temp2[21]),.in1(temp2[25]),.sel(shamt[2]),.out(temp3[21]));
mux2X1  ins_84 (.in0(temp2[20]),.in1(temp2[24]),.sel(shamt[2]),.out(temp3[20]));
mux2X1  ins_83 (.in0(temp2[19]),.in1(temp2[23]),.sel(shamt[2]),.out(temp3[19]));
mux2X1  ins_82 (.in0(temp2[18]),.in1(temp2[22]),.sel(shamt[2]),.out(temp3[18]));
mux2X1  ins_81 (.in0(temp2[17]),.in1(temp2[21]),.sel(shamt[2]),.out(temp3[17]));
mux2X1  ins_80 (.in0(temp2[16]),.in1(temp2[20]),.sel(shamt[2]),.out(temp3[16]));
mux2X1  ins_79 (.in0(temp2[15]),.in1(temp2[19]),.sel(shamt[2]),.out(temp3[15]));
mux2X1  ins_78 (.in0(temp2[14]),.in1(temp2[18]),.sel(shamt[2]),.out(temp3[14]));
mux2X1  ins_77 (.in0(temp2[13]),.in1(temp2[17]),.sel(shamt[2]),.out(temp3[13]));
mux2X1  ins_76 (.in0(temp2[12]),.in1(temp2[16]),.sel(shamt[2]),.out(temp3[12]));
mux2X1  ins_75 (.in0(temp2[11]),.in1(temp2[15]),.sel(shamt[2]),.out(temp3[11]));
mux2X1  ins_74 (.in0(temp2[10]),.in1(temp2[14]),.sel(shamt[2]),.out(temp3[10]));
mux2X1  ins_73 (.in0(temp2[9]),.in1(temp2[13]),.sel(shamt[2]),.out(temp3[9]));
mux2X1  ins_72 (.in0(temp2[8]),.in1(temp2[12]),.sel(shamt[2]),.out(temp3[8]));
mux2X1  ins_71 (.in0(temp2[7]),.in1(temp2[11]),.sel(shamt[2]),.out(temp3[7]));
mux2X1  ins_70 (.in0(temp2[6]),.in1(temp2[10]),.sel(shamt[2]),.out(temp3[6]));
mux2X1  ins_69 (.in0(temp2[5]),.in1(temp2[9]),.sel(shamt[2]),.out(temp3[5]));
mux2X1  ins_68 (.in0(temp2[4]),.in1(temp2[8]),.sel(shamt[2]),.out(temp3[4]));
mux2X1  ins_67 (.in0(temp2[3]),.in1(temp2[7]),.sel(shamt[2]),.out(temp3[3]));
mux2X1  ins_66 (.in0(temp2[2]),.in1(temp2[6]),.sel(shamt[2]),.out(temp3[2]));
mux2X1  ins_65 (.in0(temp2[1]),.in1(temp2[5]),.sel(shamt[2]),.out(temp3[1]));
mux2X1  ins_64 (.in0(temp2[0]),.in1(temp2[4]),.sel(shamt[2]),.out(temp3[0]));
 
// 8bit shift right
mux2X1  ins_159 (.in0(temp3[31]),.in1(1'b0),.sel(shamt[3]),.out(temp4[31]));
mux2X1  ins_158 (.in0(temp3[30]),.in1(1'b0),.sel(shamt[3]),.out(temp4[30]));
mux2X1  ins_157 (.in0(temp3[29]),.in1(1'b0),.sel(shamt[3]),.out(temp4[29]));
mux2X1  ins_156 (.in0(temp3[28]),.in1(1'b0),.sel(shamt[3]),.out(temp4[28]));
mux2X1  ins_155 (.in0(temp3[27]),.in1(1'b0),.sel(shamt[3]),.out(temp4[27]));
mux2X1  ins_154 (.in0(temp3[26]),.in1(1'b0),.sel(shamt[3]),.out(temp4[26]));
mux2X1  ins_153 (.in0(temp3[25]),.in1(1'b0),.sel(shamt[3]),.out(temp4[25]));
mux2X1  ins_152 (.in0(temp3[24]),.in1(1'b0),.sel(shamt[3]),.out(temp4[24]));
mux2X1  ins_151 (.in0(temp3[23]),.in1(temp3[31]),.sel(shamt[3]),.out(temp4[23]));
mux2X1  ins_150 (.in0(temp3[22]),.in1(temp3[30]),.sel(shamt[3]),.out(temp4[22]));
mux2X1  ins_149 (.in0(temp3[21]),.in1(temp3[29]),.sel(shamt[3]),.out(temp4[21]));
mux2X1  ins_148 (.in0(temp3[20]),.in1(temp3[28]),.sel(shamt[3]),.out(temp4[20]));
mux2X1  ins_147 (.in0(temp3[19]),.in1(temp3[27]),.sel(shamt[3]),.out(temp4[19]));
mux2X1  ins_146 (.in0(temp3[18]),.in1(temp3[26]),.sel(shamt[3]),.out(temp4[18]));
mux2X1  ins_145 (.in0(temp3[17]),.in1(temp3[25]),.sel(shamt[3]),.out(temp4[17]));
mux2X1  ins_144 (.in0(temp3[16]),.in1(temp3[24]),.sel(shamt[3]),.out(temp4[16]));
mux2X1  ins_143 (.in0(temp3[15]),.in1(temp3[23]),.sel(shamt[3]),.out(temp4[15]));
mux2X1  ins_142 (.in0(temp3[14]),.in1(temp3[22]),.sel(shamt[3]),.out(temp4[14]));
mux2X1  ins_141 (.in0(temp3[13]),.in1(temp3[21]),.sel(shamt[3]),.out(temp4[13]));
mux2X1  ins_140 (.in0(temp3[12]),.in1(temp3[20]),.sel(shamt[3]),.out(temp4[12]));
mux2X1  ins_139 (.in0(temp3[11]),.in1(temp3[19]),.sel(shamt[3]),.out(temp4[11]));
mux2X1  ins_138 (.in0(temp3[10]),.in1(temp3[18]),.sel(shamt[3]),.out(temp4[10]));
mux2X1  ins_137 (.in0(temp3[9]),.in1(temp3[17]),.sel(shamt[3]),.out(temp4[9]));
mux2X1  ins_136 (.in0(temp3[8]),.in1(temp3[16]),.sel(shamt[3]),.out(temp4[8]));
mux2X1  ins_135 (.in0(temp3[7]),.in1(temp3[15]),.sel(shamt[3]),.out(temp4[7]));
mux2X1  ins_134 (.in0(temp3[6]),.in1(temp3[14]),.sel(shamt[3]),.out(temp4[6]));
mux2X1  ins_133 (.in0(temp3[5]),.in1(temp3[13]),.sel(shamt[3]),.out(temp4[5]));
mux2X1  ins_132 (.in0(temp3[4]),.in1(temp3[12]),.sel(shamt[3]),.out(temp4[4]));
mux2X1  ins_131 (.in0(temp3[3]),.in1(temp3[11]),.sel(shamt[3]),.out(temp4[3]));
mux2X1  ins_130 (.in0(temp3[2]),.in1(temp3[10]),.sel(shamt[3]),.out(temp4[2]));
mux2X1  ins_129 (.in0(temp3[1]),.in1(temp3[9]),.sel(shamt[3]),.out(temp4[1]));
mux2X1  ins_128 (.in0(temp3[0]),.in1(temp3[8]),.sel(shamt[3]),.out(temp4[0]));

// 16bit shift right
mux2X1  ins_127 (.in0(temp4[31]),.in1(1'b0),.sel(shamt[4]),.out(out[31]));
mux2X1  ins_126 (.in0(temp4[30]),.in1(1'b0),.sel(shamt[4]),.out(out[30]));
mux2X1  ins_125 (.in0(temp4[29]),.in1(1'b0),.sel(shamt[4]),.out(out[29]));
mux2X1  ins_124 (.in0(temp4[28]),.in1(1'b0),.sel(shamt[4]),.out(out[28]));
mux2X1  ins_123 (.in0(temp4[27]),.in1(1'b0),.sel(shamt[4]),.out(out[27]));
mux2X1  ins_122 (.in0(temp4[26]),.in1(1'b0),.sel(shamt[4]),.out(out[26]));
mux2X1  ins_121 (.in0(temp4[25]),.in1(1'b0),.sel(shamt[4]),.out(out[25]));
mux2X1  ins_120 (.in0(temp4[24]),.in1(1'b0),.sel(shamt[4]),.out(out[24]));
mux2X1  ins_119 (.in0(temp4[23]),.in1(1'b0),.sel(shamt[4]),.out(out[23]));
mux2X1  ins_118 (.in0(temp4[22]),.in1(1'b0),.sel(shamt[4]),.out(out[22]));
mux2X1  ins_117 (.in0(temp4[21]),.in1(1'b0),.sel(shamt[4]),.out(out[21]));
mux2X1  ins_116 (.in0(temp4[20]),.in1(1'b0),.sel(shamt[4]),.out(out[20]));
mux2X1  ins_115 (.in0(temp4[19]),.in1(1'b0),.sel(shamt[4]),.out(out[19]));
mux2X1  ins_114 (.in0(temp4[18]),.in1(1'b0),.sel(shamt[4]),.out(out[18]));
mux2X1  ins_113 (.in0(temp4[17]),.in1(1'b0),.sel(shamt[4]),.out(out[17]));
mux2X1  ins_112 (.in0(temp4[16]),.in1(1'b0),.sel(shamt[4]),.out(out[16]));
mux2X1  ins_111 (.in0(temp4[15]),.in1(temp4[31]),.sel(shamt[4]),.out(out[15]));
mux2X1  ins_110 (.in0(temp4[14]),.in1(temp4[30]),.sel(shamt[4]),.out(out[14]));
mux2X1  ins_109 (.in0(temp4[13]),.in1(temp4[29]),.sel(shamt[4]),.out(out[13]));
mux2X1  ins_108 (.in0(temp4[12]),.in1(temp4[28]),.sel(shamt[4]),.out(out[12]));
mux2X1  ins_107 (.in0(temp4[11]),.in1(temp4[27]),.sel(shamt[4]),.out(out[11]));
mux2X1  ins_106 (.in0(temp4[10]),.in1(temp4[26]),.sel(shamt[4]),.out(out[10]));
mux2X1  ins_105 (.in0(temp4[9]),.in1(temp4[25]),.sel(shamt[4]),.out(out[9]));
mux2X1  ins_104 (.in0(temp4[8]),.in1(temp4[24]),.sel(shamt[4]),.out(out[8]));
mux2X1  ins_103 (.in0(temp4[7]),.in1(temp4[23]),.sel(shamt[4]),.out(out[7]));
mux2X1  ins_102 (.in0(temp4[6]),.in1(temp4[22]),.sel(shamt[4]),.out(out[6]));
mux2X1  ins_101 (.in0(temp4[5]),.in1(temp4[21]),.sel(shamt[4]),.out(out[5]));
mux2X1  ins_100 (.in0(temp4[4]),.in1(temp4[20]),.sel(shamt[4]),.out(out[4]));
mux2X1  ins_99 (.in0(temp4[3]),.in1(temp4[19]),.sel(shamt[4]),.out(out[3]));
mux2X1  ins_98 (.in0(temp4[2]),.in1(temp4[18]),.sel(shamt[4]),.out(out[2]));
mux2X1  ins_97 (.in0(temp4[1]),.in1(temp4[17]),.sel(shamt[4]),.out(out[1]));
mux2X1  ins_96 (.in0(temp4[0]),.in1(temp4[16]),.sel(shamt[4]),.out(out[0]));

endmodule
 
 
module mux2X1( in0,in1,sel,out);
  input in0,in1;
  input sel;
  output out;
  assign out=(sel)?in1:in0;
endmodule


module TM_shifter;
  reg[31:0] a ;
  reg[4:0] shamt ;
  wire[31:0] out ;

  parameter t = 200 ;
  barrel_shifter_8bit U_shifter(.shamt(shamt), .a(a), .out(out)) ;

initial begin
  #t
    a=32'd63 ;
    shamt=5'b10000 ;
  #t
    a=32'd63 ;
    shamt=5'b00001 ;
  #t
    a=32'd63 ;
    shamt=5'b00000 ;
  #t
    a=32'd63 ;
    shamt=5'b00011 ;
  #t
    $stop ;

end

endmodule
