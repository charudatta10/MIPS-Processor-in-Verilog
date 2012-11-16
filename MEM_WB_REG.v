
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:17 11/14/2012 
// Design Name: 
// Module Name:    MEM_WB_REG 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MEM_WB_REG(Clk, Reset,ALUResult_MEM,Instruction_MEM,ReadDataFromMem_MEM, MemtoReg_MEM, RegWrite_MEM,RegWriteSel_MEM,
						ReadData1_MEM,Zero_MEM,RegDst_MEM,
						ALUResult_WB,Instruction_WB,ReadDataFromMem_WB, MemtoReg_WB, RegWrite_WB,RegWriteSel_WB,
						ReadData1_WB,RegDst_WB,Zero_WB);
	 
	 input [31:0] ALUResult_MEM,Instruction_MEM,ReadDataFromMem_MEM;
	 input Clk, Reset, MemtoReg_MEM, RegWrite_MEM,RegWriteSel_MEM,Zero_MEM;
	 input [1:0] RegDst_MEM;
	 input [31:0] ReadData1_MEM;	 
 	
	 output [31:0] ALUResult_WB,Instruction_WB,ReadDataFromMem_WB;
	 output MemtoReg_WB, RegWrite_WB,RegWriteSel_WB,Zero_WB;
	 output [1:0] RegDst_WB;
	 output [31:0] ReadData1_WB;	 
	 
	 reg [31:0] ALUResult_WB,Instruction_WB,ReadDataFromMem_WB;
	 reg  MemtoReg_WB, RegWrite_WB,RegWriteSel_WB,Zero_WB;
	 reg [1:0] RegDst_WB;
	 reg [31:0] ReadData1_WB;	
	 
always@(Reset)
begin
	ALUResult_WB			<=  0;
	Instruction_WB			<=  0;
	ReadDataFromMem_WB   <=  0;
	MemtoReg_WB				<=  0;
	RegWrite_WB				<=  0;
	RegWriteSel_WB			<=  0;
   RegDst_WB				<=  0;
	Zero_WB					<=  0;
	ReadData1_WB			<=  0;
end

always@(posedge Clk)
begin
	ALUResult_WB			<=  ALUResult_MEM;
	Instruction_WB			<=  Instruction_MEM;
	ReadDataFromMem_WB   <=  ReadDataFromMem_MEM;
	MemtoReg_WB				<=  MemtoReg_MEM;
	RegWrite_WB				<=  RegWrite_MEM;
	RegWriteSel_WB			<=  RegWriteSel_MEM;
   RegDst_WB				<=  RegDst_MEM;
	Zero_WB					<=  Zero_MEM;
	ReadData1_WB			<=  ReadData1_MEM;
end

endmodule
