// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

@i
M=0

(SETSCREEN)
@i
D=M
@SCREEN
D=A+D
@address
M=D

@color
D=M

// ÕýÊ½Ãèµã
@address
A=M
M=D

@i
M=M+1
D=M
@8191
D=D-A
@INPUT
D;JLE
@RESET
0;JMP

(INPUT)
@KBD
D=M
@CLEAR
D;JEQ
@BLACK
0;JMP

(CLEAR)
@color
M=0
@SETSCREEN
0;JMP

(BLACK)
@color
M=0
M=!M
@SETSCREEN
0;JMP

(RESET)
@i
M=0
@INPUT
0;JMP