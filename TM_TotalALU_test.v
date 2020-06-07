`timescale 1ns/1ns
module TM_TotalALU_test ;
  reg clk, rst ;
  reg [31:0] a, b, ans ;
  reg [5:0] signal ;
  wire [31:0] out ;
  integer fp_r, fp_r_ans, eof, cnt;
  
  parameter t = 200 ;
  Total_ALU U_Total_ALU( .clk(clk), .dataA(a), .dataB(b), .signal(signal), .dataOut(out), .reset(rst) );
  
  initial begin
    clk = 1'b1;
    forever #5 clk = ~clk;
  end
	initial begin
		eof = 0;
		rst = 1'b1;
		#10;
		rst = 1'b0;
		/*
			?????????"input.txt"?????
			????????
			????????  InputA  InputB
		*/
		fp_r = $fopen( "D:/School/mid-term/input.txt", "r" ) ;
		/*
			???????"ans.txt"?????
			??????????
		*/
		fp_r_ans = $fopen( "D:/School/mid-term/ans.txt", "r" );
		/*
			??????ALU???????
			??????????"Correct"
			???????????????
			???????????cycle number
		*/
		$display( "Start\n" );
		eof = $fscanf(fp_r_ans, "%d", ans);
		while( eof != -1 ) begin
			rst = 1'b1 ;
			#10;
			rst = 1'b0 ;
			cnt = $fscanf(fp_r, "%d%d%d", signal, a, b );
			$write( "%d: Input: ", $time/10 );
			if ( signal == 6'd36 ) $write( "AND(%d)", signal );
			else if ( signal == 6'd37 ) $write( "OR(%d) ", signal );
			else if ( signal == 6'd32 ) $write( "ADD(%d) ", signal );
			else if ( signal == 6'd34 ) $write( "SUB(%d) ", signal );
			else if ( signal == 6'd42 ) $write( "SLT(%d) ", signal );
			else if ( signal == 6'd2 ) $write( "SRL(%d) ", signal );
			else if ( signal == 6'd27 ) $write( "DIVU(%d) ", signal );
			$display( "%d%d", a, b  );
			if ( signal == 32'd27 ) begin
				#330 ;
				$display( "%d: Div End\n", $time/10 );
				/*
					?????????????Hi-Lo???
					??????MFHI, MFLO??????????
				*/
				#10;
				#10;
				
				$display( "                   Move Hi" );
				signal = 6'd16;
				#10;
				if ( ans == out )
					$display( "%d: Correct: Your answer is:%d,\n                                 Correct answer is:%d\n", $time/10, out, ans );
				else
					$display( "%d: Wrong Answer: Your answer is:%d,\n                                             Correct answer is:%d\n", $time/10, out, ans );
				$display( "                   Move Lo" );
				signal = 6'd18;
				eof = $fscanf(fp_r_ans, "%d", ans);
				#10;
				if ( ans == out )
					$display( "%d: Correct: Your answer is:%d,\n                                 Correct answer is:%d\n", $time/10, out, ans );
				else
					$display( "%d: Wrong Answer: Your answer is:%d,\n                                             Correct answer is:%d\n", $time/10, out, ans );
			end
			else begin
				#10;
				if ( ans == out )
					$display( "%d: Correct: Your answer is:%d,\n                                 Correct answer is:%d\n", $time/10, out, ans );
				else
					$display( "%d: Wrong Answer: Your answer is:%d,\n                                             Correct answer is:%d\n", $time/10, out, ans );
			end
			eof = $fscanf(fp_r_ans, "%d", ans);
		   end
		$fclose( fp_r );
		$fclose( fp_r_ans );
		$display( "Simulation End\n" );
		$stop();
	end

endmodule 

