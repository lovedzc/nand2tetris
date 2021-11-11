// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// R0=¼ÆÊý£¬R1=³ËÊý

@R2
M=0
@R0
D=M
@END
D;JLE
(LOOP)
@R1
D=M
@R2
M=M+D
@R0
M=M-1
D=M-1
@LOOP
D;JGE
(END)
@END
0;JMP