//Subject:     CO project 2 - ALU
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:      110652011
//----------------------------------------------
//Date:        
//----------------------------------------------
//Description: ALU
//--------------------------------------------------------------------------------
`timescale 1ns/1ps
module ALU(
    src1_i,
	src2_i,
	ctrl_i,
	result_o,
	zero_o
	);
     
//I/O ports
input signed [32-1:0]  src1_i;
input signed [32-1:0]  src2_i;
input  [4-1:0]   ctrl_i;

output [32-1:0]	 result_o;
output           zero_o;

//Internal signals
reg    [32-1:0]  result_o;
wire             zero_o;

//Parameter

//Main function

	assign zero_o = (result_o == 0);
	always @(ctrl_i, src1_i, src2_i) begin
		case (ctrl_i)
			0:	result_o <= src1_i & src2_i; 		 // and
			1:  result_o <= src1_i | src2_i; 		 // or
			2:  result_o <= src1_i + src2_i; 		 // add
			6:  result_o <= src1_i - src2_i; 		 // sub
			7:  result_o <= src1_i < src2_i ? 1 : 0; // slt
			12: result_o <= ~(src1_i | src2_i);		 // nor
			default: result_o <= 0;
		endcase
	end

endmodule





                    
                    