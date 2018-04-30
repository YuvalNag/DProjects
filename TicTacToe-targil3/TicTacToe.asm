//________________________init______________
//init
//SP=256
@256
D=A
@SP
M=D

//call function Sys.init 0

//push return addr
@return_Sys.init0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.init
@Sys.init
0;JMP
(return_Sys.init0)
//________________________Array______________

//function Array.new 0
(Array.new)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_1
D;JGT
@SP
A=M
M=0
@END_1
0;JMP
(IfTrue_1)
@SP
A=M
M=-1
(END_1)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Array
D;JNE

//GOTO
@IF_FALSE0$Array
0;JMP

//LABEL
(IF_TRUE0$Array)

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error2)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Array)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Memory.alloc 1

//push return addr
@return_Memory.alloc3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Memory.alloc
@Memory.alloc
0;JMP
(return_Memory.alloc3)

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Array.dispose 0
(Array.dispose)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Memory.deAlloc 1

//push return addr
@return_Memory.deAlloc4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(return_Memory.deAlloc4)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
//________________________Game______________

//function Game.new 0
(Game.new)

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Memory.alloc 1

//push return addr
@return_Memory.alloc5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Memory.alloc
@Memory.alloc
0;JMP
(return_Memory.alloc5)

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//call Playground.new 0

//push return addr
@return_Playground.new6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.new
@Playground.new
0;JMP
(return_Playground.new6)

//pop this 6
@6
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new7)

//pop this 5
@5
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor8
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor8)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new9
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new9)

//push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar10
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar10)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar11
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar11)

//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar12)

//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar13
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar13)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar14)

//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar15)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar16
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar16)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar17
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar17)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar18)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar19
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar19)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar20
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar20)

//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar21
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar21)

//push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar22
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar22)

//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar23
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar23)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar24)

//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar25
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar25)

//push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar26
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar26)

//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar27)

//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar28)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar29
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar29)

//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar30)

//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar31)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar32
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar32)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar33
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar33)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar34
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar34)

//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar35)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar36
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar36)

//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar37
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar37)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar38
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar38)

//push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar39
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar39)

//call Output.printString 1

//push return addr
@return_Output.printString40
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString40)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 2000
@2000
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.wait 1

//push return addr
@return_Sys.wait41
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.wait
@Sys.wait
0;JMP
(return_Sys.wait41)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call Screen.clearScreen 0

//push return addr
@return_Screen.clearScreen42
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.clearScreen
@Screen.clearScreen
0;JMP
(return_Screen.clearScreen42)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.dispose 0
(Game.dispose)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push this 6
@6
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Playground.dispose 1

//push return addr
@return_Playground.dispose43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.dispose
@Playground.dispose
0;JMP
(return_Playground.dispose43)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Array.dispose 1

//push return addr
@return_Array.dispose44
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.dispose
@Array.dispose
0;JMP
(return_Array.dispose44)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Memory.deAlloc 1

//push return addr
@return_Memory.deAlloc45
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(return_Memory.deAlloc45)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.newGame 1
(Game.newGame)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 0
@0
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 1
@1
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 3
@3
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_46
D;JLT
@SP
A=M
M=0
@END_46
0;JMP
(IfTrue_46)
@SP
A=M
M=-1
(END_46)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Game
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Game
0;JMP

//LABEL
(WHILE_END0$Game)

//push this 6
@6
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Playground.drawBoard 1

//push return addr
@return_Playground.drawBoard47
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.drawBoard
@Playground.drawBoard
0;JMP
(return_Playground.drawBoard47)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 6
@6
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Playground.drawSq 3

//push return addr
@return_Playground.drawSq48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.drawSq
@Playground.drawSq
0;JMP
(return_Playground.drawSq48)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.initWritings 1

//push return addr
@return_Game.initWritings49
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.initWritings
@Game.initWritings
0;JMP
(return_Game.initWritings49)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.nextRound 1
(Game.nextRound)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_50
D;JLT
@SP
A=M
M=0
@END_50
0;JMP
(IfTrue_50)
@SP
A=M
M=-1
(END_50)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Game
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Game
0;JMP

//LABEL
(WHILE_END0$Game)

//push this 6
@6
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Playground.drawBoard 1

//push return addr
@return_Playground.drawBoard51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.drawBoard
@Playground.drawBoard
0;JMP
(return_Playground.drawBoard51)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 6
@6
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Playground.drawSq 3

//push return addr
@return_Playground.drawSq52
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.drawSq
@Playground.drawSq
0;JMP
(return_Playground.drawSq52)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.updateWritings 1

//push return addr
@return_Game.updateWritings53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.updateWritings
@Game.updateWritings
0;JMP
(return_Game.updateWritings53)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.updateWritings 0
(Game.updateWritings)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.enterScore 1

//push return addr
@return_Game.enterScore54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.enterScore
@Game.enterScore
0;JMP
(return_Game.enterScore54)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.enterCurrentPlayer 1

//push return addr
@return_Game.enterCurrentPlayer55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.enterCurrentPlayer
@Game.enterCurrentPlayer
0;JMP
(return_Game.enterCurrentPlayer55)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.enterNumOfGames 1

//push return addr
@return_Game.enterNumOfGames56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.enterNumOfGames
@Game.enterNumOfGames
0;JMP
(return_Game.enterNumOfGames56)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.initWritings 0
(Game.initWritings)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor57
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor57)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new58
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new58)

//push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar59)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar60
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar60)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar61
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar61)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar62)

//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar63)

//push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar64
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar64)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar65
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar65)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar66
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar66)

//push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar67
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar67)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar68
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar68)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar69
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar69)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar70
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar70)

//push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar71
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar71)

//push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar72
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar72)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar73
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar73)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar74
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar74)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar75
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar75)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar76
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar76)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar77
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar77)

//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar78
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar78)

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar79
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar79)

//push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar80
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar80)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar81
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar81)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar82
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar82)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar83
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar83)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar84
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar84)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar85
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar85)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar86
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar86)

//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar87
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar87)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar88
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar88)

//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar89
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar89)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar90
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar90)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar91
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar91)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar92
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar92)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar93)

//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar94
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar94)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar95
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar95)

//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar96
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar96)

//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar97
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar97)

//call Output.printString 1

//push return addr
@return_Output.printString98
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString98)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor99
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor99)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new100
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new100)

//push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar101
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar101)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar102
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar102)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar103
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar103)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar104
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar104)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar105
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar105)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar106
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar106)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar107
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar107)

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar108
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar108)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar109
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar109)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar110
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar110)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar111
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar111)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar112
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar112)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar113
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar113)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar114
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar114)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar115
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar115)

//push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar116
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar116)

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar117
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar117)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar118
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar118)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar119
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar119)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar120
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar120)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar121
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar121)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar122
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar122)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar123
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar123)

//push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar124
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar124)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar125
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar125)

//push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar126
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar126)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar127
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar127)

//call Output.printString 1

//push return addr
@return_Output.printString128
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString128)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor129
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor129)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new130
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new130)

//push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar131
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar131)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar132
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar132)

//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar133
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar133)

//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar134
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar134)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar135
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar135)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar136
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar136)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar137
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar137)

//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar138
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar138)

//call Output.printString 1

//push return addr
@return_Output.printString139
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString139)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor140
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor140)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new141
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new141)

//push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar142
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar142)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar143
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar143)

//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar144
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar144)

//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar145
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar145)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar146
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar146)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar147
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar147)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar148
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar148)

//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar149
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar149)

//call Output.printString 1

//push return addr
@return_Output.printString150
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString150)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.enterScore 1

//push return addr
@return_Game.enterScore151
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.enterScore
@Game.enterScore
0;JMP
(return_Game.enterScore151)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor152
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor152)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new153
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new153)

//push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar154
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar154)

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar155
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar155)

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar156
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar156)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar157
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar157)

//push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar158
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar158)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar159
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar159)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar160
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar160)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar161
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar161)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar162
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar162)

//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar163
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar163)

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar164
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar164)

//push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar165
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar165)

//call Output.printString 1

//push return addr
@return_Output.printString166
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString166)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor167
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor167)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new168
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new168)

//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar169
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar169)

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar170
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar170)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar171
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar171)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar172
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar172)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar173
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar173)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar174
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar174)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar175
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar175)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar176
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar176)

//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar177
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar177)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar178
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar178)

//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar179
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar179)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar180)

//call Output.printString 1

//push return addr
@return_Output.printString181
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString181)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor182
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor182)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new183
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new183)

//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar184
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar184)

//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar185
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar185)

//push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar186
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar186)

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar187
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar187)

//push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar188
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar188)

//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar189
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar189)

//push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar190
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar190)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar191
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar191)

//call Output.printString 1

//push return addr
@return_Output.printString192
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString192)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor193
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor193)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new194
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new194)

//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar195
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar195)

//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar196
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar196)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar197
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar197)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar198
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar198)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar199
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar199)

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar200
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar200)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar201
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar201)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar202
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar202)

//push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar203
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar203)

//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar204
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar204)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar205
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar205)

//push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar206
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar206)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar207
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar207)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar208
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar208)

//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar209
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar209)

//call Output.printString 1

//push return addr
@return_Output.printString210
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString210)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.enterCurrentPlayer 1

//push return addr
@return_Game.enterCurrentPlayer211
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.enterCurrentPlayer
@Game.enterCurrentPlayer
0;JMP
(return_Game.enterCurrentPlayer211)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor212
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor212)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new213
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new213)

//push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar214
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar214)

//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar215
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar215)

//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar216
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar216)

//push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar217
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar217)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar218
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar218)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar219
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar219)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar220
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar220)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar221
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar221)

//push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar222
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar222)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar223
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar223)

//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar224
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar224)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar225
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar225)

//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar226
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar226)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar227
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar227)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar228
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar228)

//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar229
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar229)

//call Output.printString 1

//push return addr
@return_Output.printString230
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString230)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.enterNumOfGames 1

//push return addr
@return_Game.enterNumOfGames231
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.enterNumOfGames
@Game.enterNumOfGames
0;JMP
(return_Game.enterNumOfGames231)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.eraseChar 0
(Game.eraseChar)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//LABEL
(WHILE_EXP0$Game)

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_232
D;JLT
@SP
A=M
M=0
@END_232
0;JMP
(IfTrue_232)
@SP
A=M
M=-1
(END_232)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Game
D;JNE

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor233
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor233)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop argument 2
@2
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Game
0;JMP

//LABEL
(WHILE_END0$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.enterScore 0
(Game.enterScore)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.eraseChar 4

//push return addr
@return_Game.eraseChar234
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.eraseChar
@Game.eraseChar
0;JMP
(return_Game.eraseChar234)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor235
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor235)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.printInt 1

//push return addr
@return_Output.printInt236
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printInt
@Output.printInt
0;JMP
(return_Output.printInt236)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.eraseChar 4

//push return addr
@return_Game.eraseChar237
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.eraseChar
@Game.eraseChar
0;JMP
(return_Game.eraseChar237)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor238
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor238)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.printInt 1

//push return addr
@return_Output.printInt239
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printInt
@Output.printInt
0;JMP
(return_Output.printInt239)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.enterCurrentPlayer 0
(Game.enterCurrentPlayer)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.eraseChar 4

//push return addr
@return_Game.eraseChar240
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.eraseChar
@Game.eraseChar
0;JMP
(return_Game.eraseChar240)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor241
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor241)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_242
D;JEQ
@SP
A=M
M=0
@END_242
0;JMP
(IfTrue_242)
@SP
A=M
M=-1
(END_242)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Game
D;JNE

//GOTO
@IF_FALSE0$Game
0;JMP

//LABEL
(IF_TRUE0$Game)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new243
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new243)

//push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar244
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar244)

//call Output.printString 1

//push return addr
@return_Output.printString245
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString245)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Game)

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_246
D;JEQ
@SP
A=M
M=0
@END_246
0;JMP
(IfTrue_246)
@SP
A=M
M=-1
(END_246)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Game
D;JNE

//GOTO
@IF_FALSE1$Game
0;JMP

//LABEL
(IF_TRUE1$Game)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new247
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new247)

//push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar248
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar248)

//call Output.printString 1

//push return addr
@return_Output.printString249
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString249)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE1$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.enterNumOfGames 0
(Game.enterNumOfGames)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.eraseChar 4

//push return addr
@return_Game.eraseChar250
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.eraseChar
@Game.eraseChar
0;JMP
(return_Game.eraseChar250)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor251
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor251)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 3
@3
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.printInt 1

//push return addr
@return_Output.printInt252
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printInt
@Output.printInt
0;JMP
(return_Output.printInt252)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.choosePos 3
(Game.choosePos)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.newGame 1

//push return addr
@return_Game.newGame253
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.newGame
@Game.newGame
0;JMP
(return_Game.newGame253)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Game
D;JNE

//LABEL
(WHILE_EXP1$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_254
D;JEQ
@SP
A=M
M=0
@END_254
0;JMP
(IfTrue_254)
@SP
A=M
M=-1
(END_254)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END1$Game
D;JNE

//call Keyboard.keyPressed 0

//push return addr
@return_Keyboard.keyPressed255
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(return_Keyboard.keyPressed255)

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP1$Game
0;JMP

//LABEL
(WHILE_END1$Game)

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 140
@140
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_256
D;JEQ
@SP
A=M
M=0
@END_256
0;JMP
(IfTrue_256)
@SP
A=M
M=-1
(END_256)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Game
D;JNE

//GOTO
@IF_FALSE0$Game
0;JMP

//LABEL
(IF_TRUE0$Game)

//call Screen.clearScreen 0

//push return addr
@return_Screen.clearScreen257
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.clearScreen
@Screen.clearScreen
0;JMP
(return_Screen.clearScreen257)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.moveCursor 2

//push return addr
@return_Output.moveCursor258
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.moveCursor
@Output.moveCursor
0;JMP
(return_Output.moveCursor258)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new259
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new259)

//push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar260
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar260)

//push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar261
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar261)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar262
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar262)

//call Output.printString 1

//push return addr
@return_Output.printString263
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString263)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call Sys.halt 0

//push return addr
@return_Sys.halt264
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.halt
@Sys.halt
0;JMP
(return_Sys.halt264)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_265
D;JEQ
@SP
A=M
M=0
@END_265
0;JMP
(IfTrue_265)
@SP
A=M
M=-1
(END_265)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Game
D;JNE

//GOTO
@IF_FALSE1$Game
0;JMP

//LABEL
(IF_TRUE1$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.nextRound 1

//push return addr
@return_Game.nextRound266
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.nextRound
@Game.nextRound
0;JMP
(return_Game.nextRound266)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE1$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_267
D;JEQ
@SP
A=M
M=0
@END_267
0;JMP
(IfTrue_267)
@SP
A=M
M=-1
(END_267)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$Game
D;JNE

//GOTO
@IF_FALSE2$Game
0;JMP

//LABEL
(IF_TRUE2$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.newGame 1

//push return addr
@return_Game.newGame268
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.newGame
@Game.newGame
0;JMP
(return_Game.newGame268)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE2$Game)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE3$Game
D;JNE

//GOTO
@IF_FALSE3$Game
0;JMP

//LABEL
(IF_TRUE3$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_269
D;JEQ
@SP
A=M
M=0
@END_269
0;JMP
(IfTrue_269)
@SP
A=M
M=-1
(END_269)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE4$Game
D;JNE

//GOTO
@IF_FALSE4$Game
0;JMP

//LABEL
(IF_TRUE4$Game)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE4$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_270
D;JEQ
@SP
A=M
M=0
@END_270
0;JMP
(IfTrue_270)
@SP
A=M
M=-1
(END_270)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE5$Game
D;JNE

//GOTO
@IF_FALSE5$Game
0;JMP

//LABEL
(IF_TRUE5$Game)

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE5$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_271
D;JEQ
@SP
A=M
M=0
@END_271
0;JMP
(IfTrue_271)
@SP
A=M
M=-1
(END_271)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE6$Game
D;JNE

//GOTO
@IF_FALSE6$Game
0;JMP

//LABEL
(IF_TRUE6$Game)

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE6$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_272
D;JEQ
@SP
A=M
M=0
@END_272
0;JMP
(IfTrue_272)
@SP
A=M
M=-1
(END_272)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE7$Game
D;JNE

//GOTO
@IF_FALSE7$Game
0;JMP

//LABEL
(IF_TRUE7$Game)

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE7$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_273
D;JEQ
@SP
A=M
M=0
@END_273
0;JMP
(IfTrue_273)
@SP
A=M
M=-1
(END_273)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE8$Game
D;JNE

//GOTO
@IF_FALSE8$Game
0;JMP

//LABEL
(IF_TRUE8$Game)

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE8$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_274
D;JEQ
@SP
A=M
M=0
@END_274
0;JMP
(IfTrue_274)
@SP
A=M
M=-1
(END_274)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE9$Game
D;JNE

//GOTO
@IF_FALSE9$Game
0;JMP

//LABEL
(IF_TRUE9$Game)

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE9$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_275
D;JEQ
@SP
A=M
M=0
@END_275
0;JMP
(IfTrue_275)
@SP
A=M
M=-1
(END_275)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE10$Game
D;JNE

//GOTO
@IF_FALSE10$Game
0;JMP

//LABEL
(IF_TRUE10$Game)

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE10$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_276
D;JEQ
@SP
A=M
M=0
@END_276
0;JMP
(IfTrue_276)
@SP
A=M
M=-1
(END_276)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE11$Game
D;JNE

//GOTO
@IF_FALSE11$Game
0;JMP

//LABEL
(IF_TRUE11$Game)

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE11$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_277
D;JEQ
@SP
A=M
M=0
@END_277
0;JMP
(IfTrue_277)
@SP
A=M
M=-1
(END_277)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE12$Game
D;JNE

//GOTO
@IF_FALSE12$Game
0;JMP

//LABEL
(IF_TRUE12$Game)

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE12$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 131
@131
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_278
D;JEQ
@SP
A=M
M=0
@END_278
0;JMP
(IfTrue_278)
@SP
A=M
M=-1
(END_278)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE13$Game
D;JNE

//GOTO
@IF_FALSE13$Game
0;JMP

//LABEL
(IF_TRUE13$Game)

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_279
D;JGT
@SP
A=M
M=0
@END_279
0;JMP
(IfTrue_279)
@SP
A=M
M=-1
(END_279)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE14$Game
D;JNE

//GOTO
@IF_FALSE14$Game
0;JMP

//LABEL
(IF_TRUE14$Game)

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE14$Game)

//LABEL
(IF_FALSE13$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 133
@133
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_280
D;JEQ
@SP
A=M
M=0
@END_280
0;JMP
(IfTrue_280)
@SP
A=M
M=-1
(END_280)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE15$Game
D;JNE

//GOTO
@IF_FALSE15$Game
0;JMP

//LABEL
(IF_TRUE15$Game)

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_281
D;JLT
@SP
A=M
M=0
@END_281
0;JMP
(IfTrue_281)
@SP
A=M
M=-1
(END_281)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE16$Game
D;JNE

//GOTO
@IF_FALSE16$Game
0;JMP

//LABEL
(IF_TRUE16$Game)

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE16$Game)

//LABEL
(IF_FALSE15$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 130
@130
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_282
D;JEQ
@SP
A=M
M=0
@END_282
0;JMP
(IfTrue_282)
@SP
A=M
M=-1
(END_282)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE17$Game
D;JNE

//GOTO
@IF_FALSE17$Game
0;JMP

//LABEL
(IF_TRUE17$Game)

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_283
D;JEQ
@SP
A=M
M=0
@END_283
0;JMP
(IfTrue_283)
@SP
A=M
M=-1
(END_283)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_284
D;JEQ
@SP
A=M
M=0
@END_284
0;JMP
(IfTrue_284)
@SP
A=M
M=-1
(END_284)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_285
D;JEQ
@SP
A=M
M=0
@END_285
0;JMP
(IfTrue_285)
@SP
A=M
M=-1
(END_285)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE18$Game
D;JNE

//GOTO
@IF_FALSE18$Game
0;JMP

//LABEL
(IF_TRUE18$Game)

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE18$Game)

//LABEL
(IF_FALSE17$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 132
@132
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_286
D;JEQ
@SP
A=M
M=0
@END_286
0;JMP
(IfTrue_286)
@SP
A=M
M=-1
(END_286)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE19$Game
D;JNE

//GOTO
@IF_FALSE19$Game
0;JMP

//LABEL
(IF_TRUE19$Game)

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_287
D;JEQ
@SP
A=M
M=0
@END_287
0;JMP
(IfTrue_287)
@SP
A=M
M=-1
(END_287)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_288
D;JEQ
@SP
A=M
M=0
@END_288
0;JMP
(IfTrue_288)
@SP
A=M
M=-1
(END_288)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_289
D;JEQ
@SP
A=M
M=0
@END_289
0;JMP
(IfTrue_289)
@SP
A=M
M=-1
(END_289)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE20$Game
D;JNE

//GOTO
@IF_FALSE20$Game
0;JMP

//LABEL
(IF_TRUE20$Game)

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop this 4
@4
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE20$Game)

//LABEL
(IF_FALSE19$Game)

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_290
D;JEQ
@SP
A=M
M=0
@END_290
0;JMP
(IfTrue_290)
@SP
A=M
M=-1
(END_290)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE21$Game
D;JNE

//GOTO
@IF_FALSE21$Game
0;JMP

//LABEL
(IF_TRUE21$Game)

//push this 6
@6
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Playground.moveSq 3

//push return addr
@return_Playground.moveSq291
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.moveSq
@Playground.moveSq
0;JMP
(return_Playground.moveSq291)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE21$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_292
D;JEQ
@SP
A=M
M=0
@END_292
0;JMP
(IfTrue_292)
@SP
A=M
M=-1
(END_292)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE22$Game
D;JNE

//GOTO
@IF_FALSE22$Game
0;JMP

//LABEL
(IF_TRUE22$Game)

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_293
D;JEQ
@SP
A=M
M=0
@END_293
0;JMP
(IfTrue_293)
@SP
A=M
M=-1
(END_293)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE23$Game
D;JNE

//GOTO
@IF_FALSE23$Game
0;JMP

//LABEL
(IF_TRUE23$Game)

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_294
D;JEQ
@SP
A=M
M=0
@END_294
0;JMP
(IfTrue_294)
@SP
A=M
M=-1
(END_294)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE24$Game
D;JNE

//GOTO
@IF_FALSE24$Game
0;JMP

//LABEL
(IF_TRUE24$Game)

//push this 6
@6
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Playground.drawX 2

//push return addr
@return_Playground.drawX295
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.drawX
@Playground.drawX
0;JMP
(return_Playground.drawX295)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE24$Game)

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_296
D;JEQ
@SP
A=M
M=0
@END_296
0;JMP
(IfTrue_296)
@SP
A=M
M=-1
(END_296)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE25$Game
D;JNE

//GOTO
@IF_FALSE25$Game
0;JMP

//LABEL
(IF_TRUE25$Game)

//push this 6
@6
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Playground.drawO 2

//push return addr
@return_Playground.drawO297
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.drawO
@Playground.drawO
0;JMP
(return_Playground.drawO297)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE25$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.checkWin 1

//push return addr
@return_Game.checkWin298
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.checkWin
@Game.checkWin
0;JMP
(return_Game.checkWin298)

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE26$Game
D;JNE

//GOTO
@IF_FALSE26$Game
0;JMP

//LABEL
(IF_TRUE26$Game)

//push this 3
@3
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop this 3
@3
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_299
D;JEQ
@SP
A=M
M=0
@END_299
0;JMP
(IfTrue_299)
@SP
A=M
M=-1
(END_299)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE27$Game
D;JNE

//GOTO
@IF_FALSE27$Game
0;JMP

//LABEL
(IF_TRUE27$Game)

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop this 0
@0
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE27$Game)

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_300
D;JEQ
@SP
A=M
M=0
@END_300
0;JMP
(IfTrue_300)
@SP
A=M
M=-1
(END_300)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE28$Game
D;JNE

//GOTO
@IF_FALSE28$Game
0;JMP

//LABEL
(IF_TRUE28$Game)

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop this 1
@1
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE28$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE26$Game)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.posFull 1

//push return addr
@return_Game.posFull301
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.posFull
@Game.posFull
0;JMP
(return_Game.posFull301)

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE29$Game
D;JNE

//GOTO
@IF_FALSE29$Game
0;JMP

//LABEL
(IF_TRUE29$Game)

//push this 6
@6
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Playground.drawSq 3

//push return addr
@return_Playground.drawSq302
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.drawSq
@Playground.drawSq
0;JMP
(return_Playground.drawSq302)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 3
@3
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop this 3
@3
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END29$Game
0;JMP

//LABEL
(IF_FALSE29$Game)

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_303
D;JEQ
@SP
A=M
M=0
@END_303
0;JMP
(IfTrue_303)
@SP
A=M
M=-1
(END_303)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE30$Game
D;JNE

//GOTO
@IF_FALSE30$Game
0;JMP

//LABEL
(IF_TRUE30$Game)

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END30$Game
0;JMP

//LABEL
(IF_FALSE30$Game)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END30$Game)

//LABEL
(IF_END29$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.updateWritings 1

//push return addr
@return_Game.updateWritings304
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.updateWritings
@Game.updateWritings
0;JMP
(return_Game.updateWritings304)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END23$Game
0;JMP

//LABEL
(IF_FALSE23$Game)

//LABEL
(IF_END23$Game)

//LABEL
(IF_FALSE22$Game)

//LABEL
(IF_FALSE3$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Game
0;JMP

//LABEL
(WHILE_END0$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.checkWin 0
(Game.checkWin)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_305
D;JGT
@SP
A=M
M=0
@END_305
0;JMP
(IfTrue_305)
@SP
A=M
M=-1
(END_305)
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_306
D;JEQ
@SP
A=M
M=0
@END_306
0;JMP
(IfTrue_306)
@SP
A=M
M=-1
(END_306)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_307
D;JEQ
@SP
A=M
M=0
@END_307
0;JMP
(IfTrue_307)
@SP
A=M
M=-1
(END_307)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Game
D;JNE

//GOTO
@IF_FALSE0$Game
0;JMP

//LABEL
(IF_TRUE0$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.showWinner 2

//push return addr
@return_Game.showWinner308
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.showWinner
@Game.showWinner
0;JMP
(return_Game.showWinner308)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE0$Game)

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_309
D;JGT
@SP
A=M
M=0
@END_309
0;JMP
(IfTrue_309)
@SP
A=M
M=-1
(END_309)
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_310
D;JEQ
@SP
A=M
M=0
@END_310
0;JMP
(IfTrue_310)
@SP
A=M
M=-1
(END_310)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_311
D;JEQ
@SP
A=M
M=0
@END_311
0;JMP
(IfTrue_311)
@SP
A=M
M=-1
(END_311)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Game
D;JNE

//GOTO
@IF_FALSE1$Game
0;JMP

//LABEL
(IF_TRUE1$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.showWinner 2

//push return addr
@return_Game.showWinner312
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.showWinner
@Game.showWinner
0;JMP
(return_Game.showWinner312)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE1$Game)

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_313
D;JGT
@SP
A=M
M=0
@END_313
0;JMP
(IfTrue_313)
@SP
A=M
M=-1
(END_313)
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_314
D;JEQ
@SP
A=M
M=0
@END_314
0;JMP
(IfTrue_314)
@SP
A=M
M=-1
(END_314)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_315
D;JEQ
@SP
A=M
M=0
@END_315
0;JMP
(IfTrue_315)
@SP
A=M
M=-1
(END_315)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$Game
D;JNE

//GOTO
@IF_FALSE2$Game
0;JMP

//LABEL
(IF_TRUE2$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.showWinner 2

//push return addr
@return_Game.showWinner316
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.showWinner
@Game.showWinner
0;JMP
(return_Game.showWinner316)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE2$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_317
D;JGT
@SP
A=M
M=0
@END_317
0;JMP
(IfTrue_317)
@SP
A=M
M=-1
(END_317)
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_318
D;JEQ
@SP
A=M
M=0
@END_318
0;JMP
(IfTrue_318)
@SP
A=M
M=-1
(END_318)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_319
D;JEQ
@SP
A=M
M=0
@END_319
0;JMP
(IfTrue_319)
@SP
A=M
M=-1
(END_319)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE3$Game
D;JNE

//GOTO
@IF_FALSE3$Game
0;JMP

//LABEL
(IF_TRUE3$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.showWinner 2

//push return addr
@return_Game.showWinner320
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.showWinner
@Game.showWinner
0;JMP
(return_Game.showWinner320)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE3$Game)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_321
D;JGT
@SP
A=M
M=0
@END_321
0;JMP
(IfTrue_321)
@SP
A=M
M=-1
(END_321)
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_322
D;JEQ
@SP
A=M
M=0
@END_322
0;JMP
(IfTrue_322)
@SP
A=M
M=-1
(END_322)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_323
D;JEQ
@SP
A=M
M=0
@END_323
0;JMP
(IfTrue_323)
@SP
A=M
M=-1
(END_323)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE4$Game
D;JNE

//GOTO
@IF_FALSE4$Game
0;JMP

//LABEL
(IF_TRUE4$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.showWinner 2

//push return addr
@return_Game.showWinner324
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.showWinner
@Game.showWinner
0;JMP
(return_Game.showWinner324)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE4$Game)

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_325
D;JGT
@SP
A=M
M=0
@END_325
0;JMP
(IfTrue_325)
@SP
A=M
M=-1
(END_325)
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_326
D;JEQ
@SP
A=M
M=0
@END_326
0;JMP
(IfTrue_326)
@SP
A=M
M=-1
(END_326)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_327
D;JEQ
@SP
A=M
M=0
@END_327
0;JMP
(IfTrue_327)
@SP
A=M
M=-1
(END_327)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE5$Game
D;JNE

//GOTO
@IF_FALSE5$Game
0;JMP

//LABEL
(IF_TRUE5$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.showWinner 2

//push return addr
@return_Game.showWinner328
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.showWinner
@Game.showWinner
0;JMP
(return_Game.showWinner328)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE5$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_329
D;JGT
@SP
A=M
M=0
@END_329
0;JMP
(IfTrue_329)
@SP
A=M
M=-1
(END_329)
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_330
D;JEQ
@SP
A=M
M=0
@END_330
0;JMP
(IfTrue_330)
@SP
A=M
M=-1
(END_330)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_331
D;JEQ
@SP
A=M
M=0
@END_331
0;JMP
(IfTrue_331)
@SP
A=M
M=-1
(END_331)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE6$Game
D;JNE

//GOTO
@IF_FALSE6$Game
0;JMP

//LABEL
(IF_TRUE6$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.showWinner 2

//push return addr
@return_Game.showWinner332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.showWinner
@Game.showWinner
0;JMP
(return_Game.showWinner332)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE6$Game)

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_333
D;JGT
@SP
A=M
M=0
@END_333
0;JMP
(IfTrue_333)
@SP
A=M
M=-1
(END_333)
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_334
D;JEQ
@SP
A=M
M=0
@END_334
0;JMP
(IfTrue_334)
@SP
A=M
M=-1
(END_334)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_335
D;JEQ
@SP
A=M
M=0
@END_335
0;JMP
(IfTrue_335)
@SP
A=M
M=-1
(END_335)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE7$Game
D;JNE

//GOTO
@IF_FALSE7$Game
0;JMP

//LABEL
(IF_TRUE7$Game)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.showWinner 2

//push return addr
@return_Game.showWinner336
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.showWinner
@Game.showWinner
0;JMP
(return_Game.showWinner336)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE7$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.showWinner 0
(Game.showWinner)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push this 6
@6
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 4
@4
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Playground.drawSq 3

//push return addr
@return_Playground.drawSq337
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.drawSq
@Playground.drawSq
0;JMP
(return_Playground.drawSq337)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_338
D;JEQ
@SP
A=M
M=0
@END_338
0;JMP
(IfTrue_338)
@SP
A=M
M=-1
(END_338)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Game
D;JNE

//GOTO
@IF_FALSE0$Game
0;JMP

//LABEL
(IF_TRUE0$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor339
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor339)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 222
@222
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine340
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine340)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 222
@222
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine341
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine341)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine342
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine342)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 222
@222
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 222
@222
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine343
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine343)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE0$Game)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_344
D;JEQ
@SP
A=M
M=0
@END_344
0;JMP
(IfTrue_344)
@SP
A=M
M=-1
(END_344)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Game
D;JNE

//GOTO
@IF_FALSE1$Game
0;JMP

//LABEL
(IF_TRUE1$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor345
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor345)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 235
@235
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 277
@277
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine346
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine346)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 235
@235
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 277
@277
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine347
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine347)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 235
@235
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 235
@235
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine348
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine348)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 277
@277
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 277
@277
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine349
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine349)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE1$Game)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_350
D;JEQ
@SP
A=M
M=0
@END_350
0;JMP
(IfTrue_350)
@SP
A=M
M=-1
(END_350)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$Game
D;JNE

//GOTO
@IF_FALSE2$Game
0;JMP

//LABEL
(IF_TRUE2$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor351
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor351)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 290
@290
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine352
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine352)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 290
@290
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine353
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine353)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 290
@290
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 290
@290
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine354
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine354)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine355
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine355)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE2$Game)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_356
D;JEQ
@SP
A=M
M=0
@END_356
0;JMP
(IfTrue_356)
@SP
A=M
M=-1
(END_356)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE3$Game
D;JNE

//GOTO
@IF_FALSE3$Game
0;JMP

//LABEL
(IF_TRUE3$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor357
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor357)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine358
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine358)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine359
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine359)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine360
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine360)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine361
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine361)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE3$Game)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_362
D;JEQ
@SP
A=M
M=0
@END_362
0;JMP
(IfTrue_362)
@SP
A=M
M=-1
(END_362)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE4$Game
D;JNE

//GOTO
@IF_FALSE4$Game
0;JMP

//LABEL
(IF_TRUE4$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor363
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor363)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine364
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine364)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine365
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine365)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine366
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine366)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine367
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine367)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE4$Game)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_368
D;JEQ
@SP
A=M
M=0
@END_368
0;JMP
(IfTrue_368)
@SP
A=M
M=-1
(END_368)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE5$Game
D;JNE

//GOTO
@IF_FALSE5$Game
0;JMP

//LABEL
(IF_TRUE5$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor369
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor369)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine370
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine370)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine371
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine371)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 180
@180
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine372
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine372)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 332
@332
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine373
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine373)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE5$Game)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_374
D;JEQ
@SP
A=M
M=0
@END_374
0;JMP
(IfTrue_374)
@SP
A=M
M=-1
(END_374)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE6$Game
D;JNE

//GOTO
@IF_FALSE6$Game
0;JMP

//LABEL
(IF_TRUE6$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor375
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor375)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 305
@305
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 347
@347
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine376
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine376)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 165
@165
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 207
@207
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine377
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine377)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 305
@305
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 165
@165
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine378
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine378)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 347
@347
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 207
@207
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine379
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine379)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE6$Game)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_380
D;JEQ
@SP
A=M
M=0
@END_380
0;JMP
(IfTrue_380)
@SP
A=M
M=-1
(END_380)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE7$Game
D;JNE

//GOTO
@IF_FALSE7$Game
0;JMP

//LABEL
(IF_TRUE7$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor381
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor381)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 305
@305
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 347
@347
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine382
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine382)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 165
@165
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 207
@207
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine383
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine383)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 305
@305
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 165
@165
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine384
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine384)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 347
@347
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 206
@206
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 207
@207
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine385
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine385)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE7$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Game.posFull 1
(Game.posFull)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_386
D;JLT
@SP
A=M
M=0
@END_386
0;JMP
(IfTrue_386)
@SP
A=M
M=-1
(END_386)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Game
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 5
@5
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_387
D;JEQ
@SP
A=M
M=0
@END_387
0;JMP
(IfTrue_387)
@SP
A=M
M=-1
(END_387)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Game
D;JNE

//GOTO
@IF_FALSE0$Game
0;JMP

//LABEL
(IF_TRUE0$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE0$Game)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Game
0;JMP

//LABEL
(WHILE_END0$Game)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
//________________________Keyboard______________

//function Keyboard.init 0
(Keyboard.init)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Keyboard.keyPressed 0
(Keyboard.keyPressed)

//push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Memory.peek 1

//push return addr
@return_Memory.peek388
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Memory.peek
@Memory.peek
0;JMP
(return_Memory.peek388)

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Keyboard.readChar 2
(Keyboard.readChar)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.printChar 1

//push return addr
@return_Output.printChar389
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printChar
@Output.printChar
0;JMP
(return_Output.printChar389)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Keyboard)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_390
D;JEQ
@SP
A=M
M=0
@END_390
0;JMP
(IfTrue_390)
@SP
A=M
M=-1
(END_390)
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_391
D;JGT
@SP
A=M
M=0
@END_391
0;JMP
(IfTrue_391)
@SP
A=M
M=-1
(END_391)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Keyboard
D;JNE

//call Keyboard.keyPressed 0

//push return addr
@return_Keyboard.keyPressed392
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(return_Keyboard.keyPressed392)

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_393
D;JGT
@SP
A=M
M=0
@END_393
0;JMP
(IfTrue_393)
@SP
A=M
M=-1
(END_393)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Keyboard
D;JNE

//GOTO
@IF_FALSE0$Keyboard
0;JMP

//LABEL
(IF_TRUE0$Keyboard)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Keyboard)

//GOTO
@WHILE_EXP0$Keyboard
0;JMP

//LABEL
(WHILE_END0$Keyboard)

//call String.backSpace 0

//push return addr
@return_String.backSpace394
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.backSpace
@String.backSpace
0;JMP
(return_String.backSpace394)

//call Output.printChar 1

//push return addr
@return_Output.printChar395
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printChar
@Output.printChar
0;JMP
(return_Output.printChar395)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.printChar 1

//push return addr
@return_Output.printChar396
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printChar
@Output.printChar
0;JMP
(return_Output.printChar396)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Keyboard.readLine 5
(Keyboard.readLine)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new397
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new397)

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.printString 1

//push return addr
@return_Output.printString398
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString398)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call String.newLine 0

//push return addr
@return_String.newLine399
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.newLine
@String.newLine
0;JMP
(return_String.newLine399)

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call String.backSpace 0

//push return addr
@return_String.backSpace400
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.backSpace
@String.backSpace
0;JMP
(return_String.backSpace400)

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Keyboard)

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Keyboard
D;JNE

//call Keyboard.readChar 0

//push return addr
@return_Keyboard.readChar401
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Keyboard.readChar
@Keyboard.readChar
0;JMP
(return_Keyboard.readChar401)

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_402
D;JEQ
@SP
A=M
M=0
@END_402
0;JMP
(IfTrue_402)
@SP
A=M
M=-1
(END_402)
@SP
M=M+1

//pop local 4
@4
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Keyboard
D;JNE

//GOTO
@IF_FALSE0$Keyboard
0;JMP

//LABEL
(IF_TRUE0$Keyboard)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_403
D;JEQ
@SP
A=M
M=0
@END_403
0;JMP
(IfTrue_403)
@SP
A=M
M=-1
(END_403)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Keyboard
D;JNE

//GOTO
@IF_FALSE1$Keyboard
0;JMP

//LABEL
(IF_TRUE1$Keyboard)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call String.eraseLastChar 1

//push return addr
@return_String.eraseLastChar404
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.eraseLastChar
@String.eraseLastChar
0;JMP
(return_String.eraseLastChar404)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END1$Keyboard
0;JMP

//LABEL
(IF_FALSE1$Keyboard)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar405
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar405)

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END1$Keyboard)

//LABEL
(IF_FALSE0$Keyboard)

//GOTO
@WHILE_EXP0$Keyboard
0;JMP

//LABEL
(WHILE_END0$Keyboard)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Keyboard.readInt 2
(Keyboard.readInt)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Keyboard.readLine 1

//push return addr
@return_Keyboard.readLine406
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Keyboard.readLine
@Keyboard.readLine
0;JMP
(return_Keyboard.readLine406)

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call String.intValue 1

//push return addr
@return_String.intValue407
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.intValue
@String.intValue
0;JMP
(return_String.intValue407)

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call String.dispose 1

//push return addr
@return_String.dispose408
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.dispose
@String.dispose
0;JMP
(return_String.dispose408)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
//________________________Main______________

//function Main.main 2
(Main.main)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Game.new 0

//push return addr
@return_Game.new409
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.new
@Game.new
0;JMP
(return_Game.new409)

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.choosePos 1

//push return addr
@return_Game.choosePos410
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.choosePos
@Game.choosePos
0;JMP
(return_Game.choosePos410)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Game.dispose 1

//push return addr
@return_Game.dispose411
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Game.dispose
@Game.dispose
0;JMP
(return_Game.dispose411)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
//________________________Math______________

//function Math.init 1
(Math.init)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new412
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new412)

//pop static 1
@SP
M=M-1
A=M
D=M
@Math.1
M=D

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new413
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new413)

//pop static 0
@SP
M=M-1
A=M
D=M
@Math.0
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Math)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_414
D;JLT
@SP
A=M
M=0
@END_414
0;JMP
(IfTrue_414)
@SP
A=M
M=-1
(END_414)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Math
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Math
0;JMP

//LABEL
(WHILE_END0$Math)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Math.abs 0
(Math.abs)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_415
D;JLT
@SP
A=M
M=0
@END_415
0;JMP
(IfTrue_415)
@SP
A=M
M=-1
(END_415)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Math
D;JNE

//GOTO
@IF_FALSE0$Math
0;JMP

//LABEL
(IF_TRUE0$Math)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//pop argument 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Math)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Math.multiply 5
(Math.multiply)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_416
D;JLT
@SP
A=M
M=0
@END_416
0;JMP
(IfTrue_416)
@SP
A=M
M=-1
(END_416)
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_417
D;JGT
@SP
A=M
M=0
@END_417
0;JMP
(IfTrue_417)
@SP
A=M
M=-1
(END_417)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_418
D;JGT
@SP
A=M
M=0
@END_418
0;JMP
(IfTrue_418)
@SP
A=M
M=-1
(END_418)
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_419
D;JLT
@SP
A=M
M=0
@END_419
0;JMP
(IfTrue_419)
@SP
A=M
M=-1
(END_419)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//pop local 4
@4
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.abs 1

//push return addr
@return_Math.abs420
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.abs
@Math.abs
0;JMP
(return_Math.abs420)

//pop argument 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.abs 1

//push return addr
@return_Math.abs421
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.abs
@Math.abs
0;JMP
(return_Math.abs421)

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_422
D;JLT
@SP
A=M
M=0
@END_422
0;JMP
(IfTrue_422)
@SP
A=M
M=-1
(END_422)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Math
D;JNE

//GOTO
@IF_FALSE0$Math
0;JMP

//LABEL
(IF_TRUE0$Math)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Math)

//LABEL
(WHILE_EXP0$Math)

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_423
D;JLT
@SP
A=M
M=0
@END_423
0;JMP
(IfTrue_423)
@SP
A=M
M=-1
(END_423)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Math
D;JNE

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_424
D;JGT
@SP
A=M
M=0
@END_424
0;JMP
(IfTrue_424)
@SP
A=M
M=-1
(END_424)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Math
D;JNE

//GOTO
@IF_FALSE1$Math
0;JMP

//LABEL
(IF_TRUE1$Math)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE1$Math)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop argument 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Math
0;JMP

//LABEL
(WHILE_END0$Math)

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$Math
D;JNE

//GOTO
@IF_FALSE2$Math
0;JMP

//LABEL
(IF_TRUE2$Math)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE2$Math)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Math.divide 4
(Math.divide)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_425
D;JEQ
@SP
A=M
M=0
@END_425
0;JMP
(IfTrue_425)
@SP
A=M
M=-1
(END_425)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Math
D;JNE

//GOTO
@IF_FALSE0$Math
0;JMP

//LABEL
(IF_TRUE0$Math)

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error426
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error426)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Math)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_427
D;JLT
@SP
A=M
M=0
@END_427
0;JMP
(IfTrue_427)
@SP
A=M
M=-1
(END_427)
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_428
D;JGT
@SP
A=M
M=0
@END_428
0;JMP
(IfTrue_428)
@SP
A=M
M=-1
(END_428)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_429
D;JGT
@SP
A=M
M=0
@END_429
0;JMP
(IfTrue_429)
@SP
A=M
M=-1
(END_429)
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_430
D;JLT
@SP
A=M
M=0
@END_430
0;JMP
(IfTrue_430)
@SP
A=M
M=-1
(END_430)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.abs 1

//push return addr
@return_Math.abs431
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.abs
@Math.abs
0;JMP
(return_Math.abs431)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.abs 1

//push return addr
@return_Math.abs432
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.abs
@Math.abs
0;JMP
(return_Math.abs432)

//pop argument 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Math)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Math
D;JNE

//push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_433
D;JLT
@SP
A=M
M=0
@END_433
0;JMP
(IfTrue_433)
@SP
A=M
M=-1
(END_433)
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Math
D;JNE

//GOTO
@IF_FALSE1$Math
0;JMP

//LABEL
(IF_TRUE1$Math)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_434
D;JGT
@SP
A=M
M=0
@END_434
0;JMP
(IfTrue_434)
@SP
A=M
M=-1
(END_434)
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$Math
D;JNE

//GOTO
@IF_FALSE2$Math
0;JMP

//LABEL
(IF_TRUE2$Math)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE2$Math)

//LABEL
(IF_FALSE1$Math)

//GOTO
@WHILE_EXP0$Math
0;JMP

//LABEL
(WHILE_END0$Math)

//LABEL
(WHILE_EXP1$Math)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_435
D;JGT
@SP
A=M
M=0
@END_435
0;JMP
(IfTrue_435)
@SP
A=M
M=-1
(END_435)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END1$Math
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_436
D;JGT
@SP
A=M
M=0
@END_436
0;JMP
(IfTrue_436)
@SP
A=M
M=-1
(END_436)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE3$Math
D;JNE

//GOTO
@IF_FALSE3$Math
0;JMP

//LABEL
(IF_TRUE3$Math)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop argument 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE3$Math)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP1$Math
0;JMP

//LABEL
(WHILE_END1$Math)

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE4$Math
D;JNE

//GOTO
@IF_FALSE4$Math
0;JMP

//LABEL
(IF_TRUE4$Math)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE4$Math)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Math.sqrt 4
(Math.sqrt)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_437
D;JLT
@SP
A=M
M=0
@END_437
0;JMP
(IfTrue_437)
@SP
A=M
M=-1
(END_437)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Math
D;JNE

//GOTO
@IF_FALSE0$Math
0;JMP

//LABEL
(IF_TRUE0$Math)

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error438
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error438)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Math)

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Math)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_439
D;JGT
@SP
A=M
M=0
@END_439
0;JMP
(IfTrue_439)
@SP
A=M
M=-1
(END_439)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Math
D;JNE

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply440
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply440)

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_441
D;JGT
@SP
A=M
M=0
@END_441
0;JMP
(IfTrue_441)
@SP
A=M
M=-1
(END_441)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_442
D;JLT
@SP
A=M
M=0
@END_442
0;JMP
(IfTrue_442)
@SP
A=M
M=-1
(END_442)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Math
D;JNE

//GOTO
@IF_FALSE1$Math
0;JMP

//LABEL
(IF_TRUE1$Math)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE1$Math)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Math
0;JMP

//LABEL
(WHILE_END0$Math)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Math.max 0
(Math.max)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_443
D;JGT
@SP
A=M
M=0
@END_443
0;JMP
(IfTrue_443)
@SP
A=M
M=-1
(END_443)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Math
D;JNE

//GOTO
@IF_FALSE0$Math
0;JMP

//LABEL
(IF_TRUE0$Math)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Math)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Math.min 0
(Math.min)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_444
D;JLT
@SP
A=M
M=0
@END_444
0;JMP
(IfTrue_444)
@SP
A=M
M=-1
(END_444)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Math
D;JNE

//GOTO
@IF_FALSE0$Math
0;JMP

//LABEL
(IF_TRUE0$Math)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Math)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
//________________________Memory______________

//function Memory.init 0
(Memory.init)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 0
@SP
M=M-1
A=M
D=M
@Memory.0
M=D

//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 2049
@2049
D=A
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 2050
@2050
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Memory.peek 0
(Memory.peek)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Memory.poke 0
(Memory.poke)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Memory.alloc 1
(Memory.alloc)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_445
D;JLT
@SP
A=M
M=0
@END_445
0;JMP
(IfTrue_445)
@SP
A=M
M=-1
(END_445)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Memory
D;JNE

//GOTO
@IF_FALSE0$Memory
0;JMP

//LABEL
(IF_TRUE0$Memory)

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error446
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error446)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Memory)

//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Memory)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_447
D;JLT
@SP
A=M
M=0
@END_447
0;JMP
(IfTrue_447)
@SP
A=M
M=-1
(END_447)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Memory
D;JNE

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Memory
0;JMP

//LABEL
(WHILE_END0$Memory)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 16379
@16379
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_448
D;JGT
@SP
A=M
M=0
@END_448
0;JMP
(IfTrue_448)
@SP
A=M
M=-1
(END_448)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Memory
D;JNE

//GOTO
@IF_FALSE1$Memory
0;JMP

//LABEL
(IF_TRUE1$Memory)

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error449
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error449)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE1$Memory)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_450
D;JGT
@SP
A=M
M=0
@END_450
0;JMP
(IfTrue_450)
@SP
A=M
M=-1
(END_450)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$Memory
D;JNE

//GOTO
@IF_FALSE2$Memory
0;JMP

//LABEL
(IF_TRUE2$Memory)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_451
D;JEQ
@SP
A=M
M=0
@END_451
0;JMP
(IfTrue_451)
@SP
A=M
M=-1
(END_451)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE3$Memory
D;JNE

//GOTO
@IF_FALSE3$Memory
0;JMP

//LABEL
(IF_TRUE3$Memory)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END3$Memory
0;JMP

//LABEL
(IF_FALSE3$Memory)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END3$Memory)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE2$Memory)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Memory.deAlloc 2
(Memory.deAlloc)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_452
D;JEQ
@SP
A=M
M=0
@END_452
0;JMP
(IfTrue_452)
@SP
A=M
M=-1
(END_452)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Memory
D;JNE

//GOTO
@IF_FALSE0$Memory
0;JMP

//LABEL
(IF_TRUE0$Memory)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END0$Memory
0;JMP

//LABEL
(IF_FALSE0$Memory)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_453
D;JEQ
@SP
A=M
M=0
@END_453
0;JMP
(IfTrue_453)
@SP
A=M
M=-1
(END_453)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Memory
D;JNE

//GOTO
@IF_FALSE1$Memory
0;JMP

//LABEL
(IF_TRUE1$Memory)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END1$Memory
0;JMP

//LABEL
(IF_FALSE1$Memory)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END1$Memory)

//LABEL
(IF_END0$Memory)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
//________________________Output______________

//function Output.init 0
(Output.init)

//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 4
@SP
M=M-1
A=M
D=M
@Output.4
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new454
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new454)

//pop static 3
@SP
M=M-1
A=M
D=M
@Output.3
M=D

//call Output.initMap 0

//push return addr
@return_Output.initMap455
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.initMap
@Output.initMap
0;JMP
(return_Output.initMap455)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call Output.createShiftedMap 0

//push return addr
@return_Output.createShiftedMap456
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.createShiftedMap
@Output.createShiftedMap
0;JMP
(return_Output.createShiftedMap456)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.initMap 0
(Output.initMap)

//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new457
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new457)

//pop static 5
@SP
M=M-1
A=M
D=M
@Output.5
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create458
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create458)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create459
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create459)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create460
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create460)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create461
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create461)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create462
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create462)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create463
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create463)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create464
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create464)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create465
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create465)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create466
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create466)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create467
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create467)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create468
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create468)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create469
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create469)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create470
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create470)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create471
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create471)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create472
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create472)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create473
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create473)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create474
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create474)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create475
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create475)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create476
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create476)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create477
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create477)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create478
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create478)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create479
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create479)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create480
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create480)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create481
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create481)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create482
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create482)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create483
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create483)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create484
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create484)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create485
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create485)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create486
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create486)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create487
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create487)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create488
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create488)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create489
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create489)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create490
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create490)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create491
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create491)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create492
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create492)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create493
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create493)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create494
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create494)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create495
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create495)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create496
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create496)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create497
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create497)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create498
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create498)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create499
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create499)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create500
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create500)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create501
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create501)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create502
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create502)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create503
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create503)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create504
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create504)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create505
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create505)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create506
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create506)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create507
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create507)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create508
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create508)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create509
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create509)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create510
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create510)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create511
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create511)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create512
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create512)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create513
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create513)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create514
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create514)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create515
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create515)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create516
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create516)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create517
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create517)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create518
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create518)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 92
@92
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create519
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create519)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create520
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create520)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 94
@94
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create521
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create521)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 95
@95
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create522
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create522)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create523
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create523)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create524
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create524)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create525
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create525)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create526
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create526)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create527
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create527)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create528
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create528)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create529
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create529)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create530
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create530)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create531
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create531)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create532
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create532)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create533
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create533)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create534
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create534)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create535
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create535)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create536
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create536)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create537
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create537)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create538
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create538)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create539
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create539)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create540
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create540)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create541
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create541)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create542
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create542)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create543
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create543)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create544
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create544)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create545
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create545)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create546
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create546)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create547
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create547)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create548
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create548)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create549
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create549)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create550
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create550)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 124
@124
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create551
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create551)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create552
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create552)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//push return addr
@return_Output.create553
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@12
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.create
@Output.create
0;JMP
(return_Output.create553)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.create 1
(Output.create)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new554
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new554)

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 5
@Output.5
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 4
@4
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 5
@5
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 6
@6
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 7
@7
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 8
@8
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 9
@9
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 10
@10
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 11
@11
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.createShiftedMap 4
(Output.createShiftedMap)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new555
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new555)

//pop static 6
@SP
M=M-1
A=M
D=M
@Output.6
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Output)

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_556
D;JLT
@SP
A=M
M=0
@END_556
0;JMP
(IfTrue_556)
@SP
A=M
M=-1
(END_556)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Output
D;JNE

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 5
@Output.5
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new557
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new557)

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 6
@Output.6
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP1$Output)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_558
D;JLT
@SP
A=M
M=0
@END_558
0;JMP
(IfTrue_558)
@SP
A=M
M=-1
(END_558)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END1$Output
D;JNE

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply559
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply559)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP1$Output
0;JMP

//LABEL
(WHILE_END1$Output)

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_560
D;JEQ
@SP
A=M
M=0
@END_560
0;JMP
(IfTrue_560)
@SP
A=M
M=-1
(END_560)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Output
D;JNE

//GOTO
@IF_FALSE0$Output
0;JMP

//LABEL
(IF_TRUE0$Output)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END0$Output
0;JMP

//LABEL
(IF_FALSE0$Output)

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END0$Output)

//GOTO
@WHILE_EXP0$Output
0;JMP

//LABEL
(WHILE_END0$Output)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.getMap 1
(Output.getMap)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_561
D;JLT
@SP
A=M
M=0
@END_561
0;JMP
(IfTrue_561)
@SP
A=M
M=-1
(END_561)
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_562
D;JGT
@SP
A=M
M=0
@END_562
0;JMP
(IfTrue_562)
@SP
A=M
M=-1
(END_562)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Output
D;JNE

//GOTO
@IF_FALSE0$Output
0;JMP

//LABEL
(IF_TRUE0$Output)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop argument 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Output)

//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Output
D;JNE

//GOTO
@IF_FALSE1$Output
0;JMP

//LABEL
(IF_TRUE1$Output)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 5
@Output.5
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END1$Output
0;JMP

//LABEL
(IF_FALSE1$Output)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 6
@Output.6
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END1$Output)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.drawChar 4
(Output.drawChar)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.getMap 1

//push return addr
@return_Output.getMap563
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.getMap
@Output.getMap
0;JMP
(return_Output.getMap563)

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Output)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_564
D;JLT
@SP
A=M
M=0
@END_564
0;JMP
(IfTrue_564)
@SP
A=M
M=-1
(END_564)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Output
D;JNE

//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Output
D;JNE

//GOTO
@IF_FALSE0$Output
0;JMP

//LABEL
(IF_TRUE0$Output)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END0$Output
0;JMP

//LABEL
(IF_FALSE0$Output)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END0$Output)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Output
0;JMP

//LABEL
(WHILE_END0$Output)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.moveCursor 0
(Output.moveCursor)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_565
D;JLT
@SP
A=M
M=0
@END_565
0;JMP
(IfTrue_565)
@SP
A=M
M=-1
(END_565)
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_566
D;JGT
@SP
A=M
M=0
@END_566
0;JMP
(IfTrue_566)
@SP
A=M
M=-1
(END_566)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_567
D;JLT
@SP
A=M
M=0
@END_567
0;JMP
(IfTrue_567)
@SP
A=M
M=-1
(END_567)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_568
D;JGT
@SP
A=M
M=0
@END_568
0;JMP
(IfTrue_568)
@SP
A=M
M=-1
(END_568)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Output
D;JNE

//GOTO
@IF_FALSE0$Output
0;JMP

//LABEL
(IF_TRUE0$Output)

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error569
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error569)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Output)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//push return addr
@return_Math.divide570
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.divide
@Math.divide
0;JMP
(return_Math.divide570)

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply571
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply571)

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply572
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply572)

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_573
D;JEQ
@SP
A=M
M=0
@END_573
0;JMP
(IfTrue_573)
@SP
A=M
M=-1
(END_573)
@SP
M=M+1

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.drawChar 1

//push return addr
@return_Output.drawChar574
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.drawChar
@Output.drawChar
0;JMP
(return_Output.drawChar574)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.printChar 0
(Output.printChar)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call String.newLine 0

//push return addr
@return_String.newLine575
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.newLine
@String.newLine
0;JMP
(return_String.newLine575)

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_576
D;JEQ
@SP
A=M
M=0
@END_576
0;JMP
(IfTrue_576)
@SP
A=M
M=-1
(END_576)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Output
D;JNE

//GOTO
@IF_FALSE0$Output
0;JMP

//LABEL
(IF_TRUE0$Output)

//call Output.println 0

//push return addr
@return_Output.println577
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.println
@Output.println
0;JMP
(return_Output.println577)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END0$Output
0;JMP

//LABEL
(IF_FALSE0$Output)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call String.backSpace 0

//push return addr
@return_String.backSpace578
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.backSpace
@String.backSpace
0;JMP
(return_String.backSpace578)

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_579
D;JEQ
@SP
A=M
M=0
@END_579
0;JMP
(IfTrue_579)
@SP
A=M
M=-1
(END_579)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Output
D;JNE

//GOTO
@IF_FALSE1$Output
0;JMP

//LABEL
(IF_TRUE1$Output)

//call Output.backSpace 0

//push return addr
@return_Output.backSpace580
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.backSpace
@Output.backSpace
0;JMP
(return_Output.backSpace580)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END1$Output
0;JMP

//LABEL
(IF_FALSE1$Output)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.drawChar 1

//push return addr
@return_Output.drawChar581
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.drawChar
@Output.drawChar
0;JMP
(return_Output.drawChar581)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$Output
D;JNE

//GOTO
@IF_FALSE2$Output
0;JMP

//LABEL
(IF_TRUE2$Output)

//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//LABEL
(IF_FALSE2$Output)

//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_582
D;JEQ
@SP
A=M
M=0
@END_582
0;JMP
(IfTrue_582)
@SP
A=M
M=-1
(END_582)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE3$Output
D;JNE

//GOTO
@IF_FALSE3$Output
0;JMP

//LABEL
(IF_TRUE3$Output)

//call Output.println 0

//push return addr
@return_Output.println583
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.println
@Output.println
0;JMP
(return_Output.println583)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END3$Output
0;JMP

//LABEL
(IF_FALSE3$Output)

//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//LABEL
(IF_END3$Output)

//LABEL
(IF_END1$Output)

//LABEL
(IF_END0$Output)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.printString 2
(Output.printString)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call String.length 1

//push return addr
@return_String.length584
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.length
@String.length
0;JMP
(return_String.length584)

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Output)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_585
D;JLT
@SP
A=M
M=0
@END_585
0;JMP
(IfTrue_585)
@SP
A=M
M=-1
(END_585)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Output
D;JNE

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call String.charAt 2

//push return addr
@return_String.charAt586
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.charAt
@String.charAt
0;JMP
(return_String.charAt586)

//call Output.printChar 1

//push return addr
@return_Output.printChar587
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printChar
@Output.printChar
0;JMP
(return_Output.printChar587)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Output
0;JMP

//LABEL
(WHILE_END0$Output)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.printInt 0
(Output.printInt)

//push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call String.setInt 2

//push return addr
@return_String.setInt588
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.setInt
@String.setInt
0;JMP
(return_String.setInt588)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.printString 1

//push return addr
@return_Output.printString589
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString589)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.println 0
(Output.println)

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_590
D;JEQ
@SP
A=M
M=0
@END_590
0;JMP
(IfTrue_590)
@SP
A=M
M=-1
(END_590)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Output
D;JNE

//GOTO
@IF_FALSE0$Output
0;JMP

//LABEL
(IF_TRUE0$Output)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//LABEL
(IF_FALSE0$Output)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Output.backSpace 0
(Output.backSpace)

//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Output
D;JNE

//GOTO
@IF_FALSE0$Output
0;JMP

//LABEL
(IF_TRUE0$Output)

//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_591
D;JGT
@SP
A=M
M=0
@END_591
0;JMP
(IfTrue_591)
@SP
A=M
M=-1
(END_591)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Output
D;JNE

//GOTO
@IF_FALSE1$Output
0;JMP

//LABEL
(IF_TRUE1$Output)

//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//GOTO
@IF_END1$Output
0;JMP

//LABEL
(IF_FALSE1$Output)

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_592
D;JEQ
@SP
A=M
M=0
@END_592
0;JMP
(IfTrue_592)
@SP
A=M
M=-1
(END_592)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$Output
D;JNE

//GOTO
@IF_FALSE2$Output
0;JMP

//LABEL
(IF_TRUE2$Output)

//push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//LABEL
(IF_FALSE2$Output)

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 321
@321
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//LABEL
(IF_END1$Output)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//GOTO
@IF_END0$Output
0;JMP

//LABEL
(IF_FALSE0$Output)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//LABEL
(IF_END0$Output)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.drawChar 1

//push return addr
@return_Output.drawChar593
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.drawChar
@Output.drawChar
0;JMP
(return_Output.drawChar593)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
//________________________Playground______________

//function Playground.new 0
(Playground.new)

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Memory.alloc 1

//push return addr
@return_Memory.alloc594
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Memory.alloc
@Memory.alloc
0;JMP
(return_Memory.alloc594)

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new595
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new595)

//pop this 0
@0
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new596
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new596)

//pop this 1
@1
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 201
@201
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 201
@201
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 201
@201
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 311
@311
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 311
@311
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 311
@311
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 183
@183
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 183
@183
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 183
@183
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Playground.dispose 0
(Playground.dispose)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Array.dispose 1

//push return addr
@return_Array.dispose597
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.dispose
@Array.dispose
0;JMP
(return_Array.dispose597)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Array.dispose 1

//push return addr
@return_Array.dispose598
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.dispose
@Array.dispose
0;JMP
(return_Array.dispose598)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Memory.deAlloc 1

//push return addr
@return_Memory.deAlloc599
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(return_Memory.deAlloc599)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Playground.drawBoard 0
(Playground.drawBoard)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor600
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor600)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 160
@160
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 350
@350
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 208
@208
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawRectangle 4

//push return addr
@return_Screen.drawRectangle601
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(return_Screen.drawRectangle601)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor602
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor602)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 226
@226
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 231
@231
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 208
@208
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawRectangle 4

//push return addr
@return_Screen.drawRectangle603
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(return_Screen.drawRectangle603)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 281
@281
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 286
@286
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 208
@208
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawRectangle 4

//push return addr
@return_Screen.drawRectangle604
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(return_Screen.drawRectangle604)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 176
@176
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 336
@336
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawRectangle 4

//push return addr
@return_Screen.drawRectangle605
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(return_Screen.drawRectangle605)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 176
@176
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 153
@153
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 336
@336
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 157
@157
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawRectangle 4

//push return addr
@return_Screen.drawRectangle606
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(return_Screen.drawRectangle606)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Playground.moveSq 0
(Playground.moveSq)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Playground.drawSq 3

//push return addr
@return_Playground.drawSq607
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.drawSq
@Playground.drawSq
0;JMP
(return_Playground.drawSq607)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Playground.drawSq 3

//push return addr
@return_Playground.drawSq608
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Playground.drawSq
@Playground.drawSq
0;JMP
(return_Playground.drawSq608)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Playground.erasePos 0
(Playground.erasePos)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor609
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor609)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawRectangle 4

//push return addr
@return_Screen.drawRectangle610
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(return_Screen.drawRectangle610)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Playground.drawSq 3
(Playground.drawSq)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor611
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor611)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Playground)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_612
D;JLT
@SP
A=M
M=0
@END_612
0;JMP
(IfTrue_612)
@SP
A=M
M=-1
(END_612)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Playground
D;JNE

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine613
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine613)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine614
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine614)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine615
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine615)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine616
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine616)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Playground
0;JMP

//LABEL
(WHILE_END0$Playground)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Playground.drawO 0
(Playground.drawO)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor617
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor617)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawCircle 3

//push return addr
@return_Screen.drawCircle618
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(return_Screen.drawCircle618)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor619
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor619)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawCircle 3

//push return addr
@return_Screen.drawCircle620
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(return_Screen.drawCircle620)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Playground.drawX 5
(Playground.drawX)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//call Screen.setColor 1

//push return addr
@return_Screen.setColor621
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.setColor
@Screen.setColor
0;JMP
(return_Screen.setColor621)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 4
@4
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Playground)

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_622
D;JLT
@SP
A=M
M=0
@END_622
0;JMP
(IfTrue_622)
@SP
A=M
M=-1
(END_622)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Playground
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine623
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine623)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawLine 4

//push return addr
@return_Screen.drawLine624
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawLine
@Screen.drawLine
0;JMP
(return_Screen.drawLine624)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 4
@4
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Playground
0;JMP

//LABEL
(WHILE_END0$Playground)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
//________________________Screen______________

//function Screen.init 1
(Screen.init)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Screen.1
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop static 2
@SP
M=M-1
A=M
D=M
@Screen.2
M=D

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new625
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new625)

//pop static 0
@SP
M=M-1
A=M
D=M
@Screen.0
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_626
D;JLT
@SP
A=M
M=0
@END_626
0;JMP
(IfTrue_626)
@SP
A=M
M=-1
(END_626)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Screen
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Screen
0;JMP

//LABEL
(WHILE_END0$Screen)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Screen.clearScreen 1
(Screen.clearScreen)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//LABEL
(WHILE_EXP0$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 8192
@8192
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_627
D;JLT
@SP
A=M
M=0
@END_627
0;JMP
(IfTrue_627)
@SP
A=M
M=-1
(END_627)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Screen
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Screen
0;JMP

//LABEL
(WHILE_END0$Screen)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Screen.updateLocation 0
(Screen.updateLocation)

//push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Screen
D;JNE

//GOTO
@IF_FALSE0$Screen
0;JMP

//LABEL
(IF_TRUE0$Screen)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END0$Screen
0;JMP

//LABEL
(IF_FALSE0$Screen)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END0$Screen)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Screen.setColor 0
(Screen.setColor)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop static 2
@SP
M=M-1
A=M
D=M
@Screen.2
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Screen.drawPixel 3
(Screen.drawPixel)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_628
D;JLT
@SP
A=M
M=0
@END_628
0;JMP
(IfTrue_628)
@SP
A=M
M=-1
(END_628)
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_629
D;JGT
@SP
A=M
M=0
@END_629
0;JMP
(IfTrue_629)
@SP
A=M
M=-1
(END_629)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_630
D;JLT
@SP
A=M
M=0
@END_630
0;JMP
(IfTrue_630)
@SP
A=M
M=-1
(END_630)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_631
D;JGT
@SP
A=M
M=0
@END_631
0;JMP
(IfTrue_631)
@SP
A=M
M=-1
(END_631)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Screen
D;JNE

//GOTO
@IF_FALSE0$Screen
0;JMP

//LABEL
(IF_TRUE0$Screen)

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error632
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error632)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Screen)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//push return addr
@return_Math.divide633
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.divide
@Math.divide
0;JMP
(return_Math.divide633)

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply634
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply634)

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply635
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply635)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.updateLocation 2

//push return addr
@return_Screen.updateLocation636
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(return_Screen.updateLocation636)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Screen.drawConditional 0
(Screen.drawConditional)

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Screen
D;JNE

//GOTO
@IF_FALSE0$Screen
0;JMP

//LABEL
(IF_TRUE0$Screen)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawPixel 2

//push return addr
@return_Screen.drawPixel637
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(return_Screen.drawPixel637)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END0$Screen
0;JMP

//LABEL
(IF_FALSE0$Screen)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawPixel 2

//push return addr
@return_Screen.drawPixel638
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(return_Screen.drawPixel638)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END0$Screen)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Screen.drawLine 11
(Screen.drawLine)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_639
D;JLT
@SP
A=M
M=0
@END_639
0;JMP
(IfTrue_639)
@SP
A=M
M=-1
(END_639)
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_640
D;JGT
@SP
A=M
M=0
@END_640
0;JMP
(IfTrue_640)
@SP
A=M
M=-1
(END_640)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_641
D;JLT
@SP
A=M
M=0
@END_641
0;JMP
(IfTrue_641)
@SP
A=M
M=-1
(END_641)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_642
D;JGT
@SP
A=M
M=0
@END_642
0;JMP
(IfTrue_642)
@SP
A=M
M=-1
(END_642)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Screen
D;JNE

//GOTO
@IF_FALSE0$Screen
0;JMP

//LABEL
(IF_TRUE0$Screen)

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error643
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error643)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Screen)

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//call Math.abs 1

//push return addr
@return_Math.abs644
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.abs
@Math.abs
0;JMP
(return_Math.abs644)

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//call Math.abs 1

//push return addr
@return_Math.abs645
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.abs
@Math.abs
0;JMP
(return_Math.abs645)

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_646
D;JLT
@SP
A=M
M=0
@END_646
0;JMP
(IfTrue_646)
@SP
A=M
M=-1
(END_646)
@SP
M=M+1

//pop local 6
@6
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 6
@6
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_647
D;JLT
@SP
A=M
M=0
@END_647
0;JMP
(IfTrue_647)
@SP
A=M
M=-1
(END_647)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push local 6
@6
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_648
D;JLT
@SP
A=M
M=0
@END_648
0;JMP
(IfTrue_648)
@SP
A=M
M=-1
(END_648)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Screen
D;JNE

//GOTO
@IF_FALSE1$Screen
0;JMP

//LABEL
(IF_TRUE1$Screen)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 4
@4
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 2
@2
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 4
@4
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 3
@3
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE1$Screen)

//push local 6
@6
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$Screen
D;JNE

//GOTO
@IF_FALSE2$Screen
0;JMP

//LABEL
(IF_TRUE2$Screen)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 4
@4
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 8
@8
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_649
D;JGT
@SP
A=M
M=0
@END_649
0;JMP
(IfTrue_649)
@SP
A=M
M=-1
(END_649)
@SP
M=M+1

//pop local 7
@7
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END2$Screen
0;JMP

//LABEL
(IF_FALSE2$Screen)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 8
@8
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_650
D;JGT
@SP
A=M
M=0
@END_650
0;JMP
(IfTrue_650)
@SP
A=M
M=-1
(END_650)
@SP
M=M+1

//pop local 7
@7
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END2$Screen)

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply651
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply651)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 5
@5
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply652
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply652)

//pop local 9
@9
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply653
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply653)

//pop local 10
@10
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 6
@6
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawConditional 3

//push return addr
@return_Screen.drawConditional654
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawConditional
@Screen.drawConditional
0;JMP
(return_Screen.drawConditional654)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Screen)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 8
@8
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_655
D;JLT
@SP
A=M
M=0
@END_655
0;JMP
(IfTrue_655)
@SP
A=M
M=-1
(END_655)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Screen
D;JNE

//push local 5
@5
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_656
D;JLT
@SP
A=M
M=0
@END_656
0;JMP
(IfTrue_656)
@SP
A=M
M=-1
(END_656)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE3$Screen
D;JNE

//GOTO
@IF_FALSE3$Screen
0;JMP

//LABEL
(IF_TRUE3$Screen)

//push local 5
@5
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 9
@9
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 5
@5
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END3$Screen
0;JMP

//LABEL
(IF_FALSE3$Screen)

//push local 5
@5
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 10
@10
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 5
@5
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 7
@7
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE4$Screen
D;JNE

//GOTO
@IF_FALSE4$Screen
0;JMP

//LABEL
(IF_TRUE4$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END4$Screen
0;JMP

//LABEL
(IF_FALSE4$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END4$Screen)

//LABEL
(IF_END3$Screen)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 6
@6
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawConditional 3

//push return addr
@return_Screen.drawConditional657
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawConditional
@Screen.drawConditional
0;JMP
(return_Screen.drawConditional657)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Screen
0;JMP

//LABEL
(WHILE_END0$Screen)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Screen.drawRectangle 9
(Screen.drawRectangle)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_658
D;JGT
@SP
A=M
M=0
@END_658
0;JMP
(IfTrue_658)
@SP
A=M
M=-1
(END_658)
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_659
D;JGT
@SP
A=M
M=0
@END_659
0;JMP
(IfTrue_659)
@SP
A=M
M=-1
(END_659)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_660
D;JLT
@SP
A=M
M=0
@END_660
0;JMP
(IfTrue_660)
@SP
A=M
M=-1
(END_660)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_661
D;JGT
@SP
A=M
M=0
@END_661
0;JMP
(IfTrue_661)
@SP
A=M
M=-1
(END_661)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_662
D;JLT
@SP
A=M
M=0
@END_662
0;JMP
(IfTrue_662)
@SP
A=M
M=-1
(END_662)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_663
D;JGT
@SP
A=M
M=0
@END_663
0;JMP
(IfTrue_663)
@SP
A=M
M=-1
(END_663)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Screen
D;JNE

//GOTO
@IF_FALSE0$Screen
0;JMP

//LABEL
(IF_TRUE0$Screen)

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error664
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error664)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Screen)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//push return addr
@return_Math.divide665
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.divide
@Math.divide
0;JMP
(return_Math.divide665)

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply666
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply666)

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 7
@7
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//push return addr
@return_Math.divide667
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.divide
@Math.divide
0;JMP
(return_Math.divide667)

//pop local 4
@4
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply668
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply668)

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 8
@8
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 7
@7
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop local 6
@6
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 8
@8
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 5
@5
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply669
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply669)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Screen)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_670
D;JGT
@SP
A=M
M=0
@END_670
0;JMP
(IfTrue_670)
@SP
A=M
M=-1
(END_670)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Screen
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_671
D;JEQ
@SP
A=M
M=0
@END_671
0;JMP
(IfTrue_671)
@SP
A=M
M=-1
(END_671)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Screen
D;JNE

//GOTO
@IF_FALSE1$Screen
0;JMP

//LABEL
(IF_TRUE1$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 5
@5
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 6
@6
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//call Screen.updateLocation 2

//push return addr
@return_Screen.updateLocation672
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(return_Screen.updateLocation672)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END1$Screen
0;JMP

//LABEL
(IF_FALSE1$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 6
@6
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.updateLocation 2

//push return addr
@return_Screen.updateLocation673
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(return_Screen.updateLocation673)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP1$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_674
D;JLT
@SP
A=M
M=0
@END_674
0;JMP
(IfTrue_674)
@SP
A=M
M=-1
(END_674)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END1$Screen
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//call Screen.updateLocation 2

//push return addr
@return_Screen.updateLocation675
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(return_Screen.updateLocation675)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP1$Screen
0;JMP

//LABEL
(WHILE_END1$Screen)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 5
@5
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.updateLocation 2

//push return addr
@return_Screen.updateLocation676
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(return_Screen.updateLocation676)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END1$Screen)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Screen
0;JMP

//LABEL
(WHILE_END0$Screen)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Screen.drawHorizontal 11
(Screen.drawHorizontal)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.min 2

//push return addr
@return_Math.min677
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.min
@Math.min
0;JMP
(return_Math.min677)

//pop local 7
@7
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.max 2

//push return addr
@return_Math.max678
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.max
@Math.max
0;JMP
(return_Math.max678)

//pop local 8
@8
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_679
D;JGT
@SP
A=M
M=0
@END_679
0;JMP
(IfTrue_679)
@SP
A=M
M=-1
(END_679)
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_680
D;JLT
@SP
A=M
M=0
@END_680
0;JMP
(IfTrue_680)
@SP
A=M
M=-1
(END_680)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push local 7
@7
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 512
@512
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_681
D;JLT
@SP
A=M
M=0
@END_681
0;JMP
(IfTrue_681)
@SP
A=M
M=-1
(END_681)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//push local 8
@8
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_682
D;JGT
@SP
A=M
M=0
@END_682
0;JMP
(IfTrue_682)
@SP
A=M
M=-1
(END_682)
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Screen
D;JNE

//GOTO
@IF_FALSE0$Screen
0;JMP

//LABEL
(IF_TRUE0$Screen)

//push local 7
@7
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.max 2

//push return addr
@return_Math.max683
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.max
@Math.max
0;JMP
(return_Math.max683)

//pop local 7
@7
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 8
@8
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.min 2

//push return addr
@return_Math.min684
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.min
@Math.min
0;JMP
(return_Math.min684)

//pop local 8
@8
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 7
@7
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//push return addr
@return_Math.divide685
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.divide
@Math.divide
0;JMP
(return_Math.divide685)

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 7
@7
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply686
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply686)

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 9
@9
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 8
@8
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//push return addr
@return_Math.divide687
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.divide
@Math.divide
0;JMP
(return_Math.divide687)

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 8
@8
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply688
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply688)

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 10
@10
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 9
@9
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop local 5
@5
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 10
@10
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 4
@4
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply689
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply689)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 6
@6
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 6
@6
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 6
@6
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_690
D;JEQ
@SP
A=M
M=0
@END_690
0;JMP
(IfTrue_690)
@SP
A=M
M=-1
(END_690)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Screen
D;JNE

//GOTO
@IF_FALSE1$Screen
0;JMP

//LABEL
(IF_TRUE1$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 5
@5
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//call Screen.updateLocation 2

//push return addr
@return_Screen.updateLocation691
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(return_Screen.updateLocation691)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END1$Screen
0;JMP

//LABEL
(IF_FALSE1$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 5
@5
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.updateLocation 2

//push return addr
@return_Screen.updateLocation692
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(return_Screen.updateLocation692)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_693
D;JLT
@SP
A=M
M=0
@END_693
0;JMP
(IfTrue_693)
@SP
A=M
M=-1
(END_693)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Screen
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//call Screen.updateLocation 2

//push return addr
@return_Screen.updateLocation694
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(return_Screen.updateLocation694)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Screen
0;JMP

//LABEL
(WHILE_END0$Screen)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.updateLocation 2

//push return addr
@return_Screen.updateLocation695
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(return_Screen.updateLocation695)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END1$Screen)

//LABEL
(IF_FALSE0$Screen)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Screen.drawSymetric 0
(Screen.drawSymetric)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//call Screen.drawHorizontal 3

//push return addr
@return_Screen.drawHorizontal696
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
(return_Screen.drawHorizontal696)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//call Screen.drawHorizontal 3

//push return addr
@return_Screen.drawHorizontal697
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
(return_Screen.drawHorizontal697)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawHorizontal 3

//push return addr
@return_Screen.drawHorizontal698
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
(return_Screen.drawHorizontal698)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//call Screen.drawHorizontal 3

//push return addr
@return_Screen.drawHorizontal699
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@3
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
(return_Screen.drawHorizontal699)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Screen.drawCircle 3
(Screen.drawCircle)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_700
D;JLT
@SP
A=M
M=0
@END_700
0;JMP
(IfTrue_700)
@SP
A=M
M=-1
(END_700)
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_701
D;JGT
@SP
A=M
M=0
@END_701
0;JMP
(IfTrue_701)
@SP
A=M
M=-1
(END_701)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_702
D;JLT
@SP
A=M
M=0
@END_702
0;JMP
(IfTrue_702)
@SP
A=M
M=-1
(END_702)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_703
D;JGT
@SP
A=M
M=0
@END_703
0;JMP
(IfTrue_703)
@SP
A=M
M=-1
(END_703)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Screen
D;JNE

//GOTO
@IF_FALSE0$Screen
0;JMP

//LABEL
(IF_TRUE0$Screen)

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error704
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error704)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Screen)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_705
D;JLT
@SP
A=M
M=0
@END_705
0;JMP
(IfTrue_705)
@SP
A=M
M=-1
(END_705)
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_706
D;JGT
@SP
A=M
M=0
@END_706
0;JMP
(IfTrue_706)
@SP
A=M
M=-1
(END_706)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_707
D;JLT
@SP
A=M
M=0
@END_707
0;JMP
(IfTrue_707)
@SP
A=M
M=-1
(END_707)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_708
D;JGT
@SP
A=M
M=0
@END_708
0;JMP
(IfTrue_708)
@SP
A=M
M=-1
(END_708)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$Screen
D;JNE

//GOTO
@IF_FALSE1$Screen
0;JMP

//LABEL
(IF_TRUE1$Screen)

//push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error709
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error709)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE1$Screen)

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawSymetric 4

//push return addr
@return_Screen.drawSymetric710
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawSymetric
@Screen.drawSymetric
0;JMP
(return_Screen.drawSymetric710)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$Screen)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_711
D;JGT
@SP
A=M
M=0
@END_711
0;JMP
(IfTrue_711)
@SP
A=M
M=-1
(END_711)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Screen
D;JNE

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_712
D;JLT
@SP
A=M
M=0
@END_712
0;JMP
(IfTrue_712)
@SP
A=M
M=-1
(END_712)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$Screen
D;JNE

//GOTO
@IF_FALSE2$Screen
0;JMP

//LABEL
(IF_TRUE2$Screen)

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply713
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply713)

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END2$Screen
0;JMP

//LABEL
(IF_FALSE2$Screen)

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply714
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply714)

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_END2$Screen)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawSymetric 4

//push return addr
@return_Screen.drawSymetric715
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@4
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.drawSymetric
@Screen.drawSymetric
0;JMP
(return_Screen.drawSymetric715)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Screen
0;JMP

//LABEL
(WHILE_END0$Screen)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
//________________________String______________

//function String.new 0
(String.new)

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Memory.alloc 1

//push return addr
@return_Memory.alloc716
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Memory.alloc
@Memory.alloc
0;JMP
(return_Memory.alloc716)

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_717
D;JLT
@SP
A=M
M=0
@END_717
0;JMP
(IfTrue_717)
@SP
A=M
M=-1
(END_717)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$String
D;JNE

//GOTO
@IF_FALSE0$String
0;JMP

//LABEL
(IF_TRUE0$String)

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error718
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error718)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$String)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_719
D;JGT
@SP
A=M
M=0
@END_719
0;JMP
(IfTrue_719)
@SP
A=M
M=-1
(END_719)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$String
D;JNE

//GOTO
@IF_FALSE1$String
0;JMP

//LABEL
(IF_TRUE1$String)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new720
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new720)

//pop this 1
@1
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE1$String)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop this 0
@0
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.dispose 0
(String.dispose)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_721
D;JGT
@SP
A=M
M=0
@END_721
0;JMP
(IfTrue_721)
@SP
A=M
M=-1
(END_721)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$String
D;JNE

//GOTO
@IF_FALSE0$String
0;JMP

//LABEL
(IF_TRUE0$String)

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Array.dispose 1

//push return addr
@return_Array.dispose722
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.dispose
@Array.dispose
0;JMP
(return_Array.dispose722)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$String)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Memory.deAlloc 1

//push return addr
@return_Memory.deAlloc723
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(return_Memory.deAlloc723)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.length 0
(String.length)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.charAt 0
(String.charAt)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_724
D;JLT
@SP
A=M
M=0
@END_724
0;JMP
(IfTrue_724)
@SP
A=M
M=-1
(END_724)
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_725
D;JGT
@SP
A=M
M=0
@END_725
0;JMP
(IfTrue_725)
@SP
A=M
M=-1
(END_725)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_726
D;JEQ
@SP
A=M
M=0
@END_726
0;JMP
(IfTrue_726)
@SP
A=M
M=-1
(END_726)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$String
D;JNE

//GOTO
@IF_FALSE0$String
0;JMP

//LABEL
(IF_TRUE0$String)

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error727
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error727)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$String)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.setCharAt 0
(String.setCharAt)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_728
D;JLT
@SP
A=M
M=0
@END_728
0;JMP
(IfTrue_728)
@SP
A=M
M=-1
(END_728)
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_729
D;JGT
@SP
A=M
M=0
@END_729
0;JMP
(IfTrue_729)
@SP
A=M
M=-1
(END_729)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_730
D;JEQ
@SP
A=M
M=0
@END_730
0;JMP
(IfTrue_730)
@SP
A=M
M=-1
(END_730)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$String
D;JNE

//GOTO
@IF_FALSE0$String
0;JMP

//LABEL
(IF_TRUE0$String)

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error731
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error731)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$String)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.appendChar 0
(String.appendChar)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_732
D;JEQ
@SP
A=M
M=0
@END_732
0;JMP
(IfTrue_732)
@SP
A=M
M=-1
(END_732)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$String
D;JNE

//GOTO
@IF_FALSE0$String
0;JMP

//LABEL
(IF_TRUE0$String)

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error733
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error733)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$String)

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.eraseLastChar 0
(String.eraseLastChar)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_734
D;JEQ
@SP
A=M
M=0
@END_734
0;JMP
(IfTrue_734)
@SP
A=M
M=-1
(END_734)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$String
D;JNE

//GOTO
@IF_FALSE0$String
0;JMP

//LABEL
(IF_TRUE0$String)

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error735
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error735)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$String)

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.intValue 5
(String.intValue)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_736
D;JEQ
@SP
A=M
M=0
@END_736
0;JMP
(IfTrue_736)
@SP
A=M
M=-1
(END_736)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$String
D;JNE

//GOTO
@IF_FALSE0$String
0;JMP

//LABEL
(IF_TRUE0$String)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//LABEL
(IF_FALSE0$String)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_737
D;JEQ
@SP
A=M
M=0
@END_737
0;JMP
(IfTrue_737)
@SP
A=M
M=-1
(END_737)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$String
D;JNE

//GOTO
@IF_FALSE1$String
0;JMP

//LABEL
(IF_TRUE1$String)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop local 4
@4
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE1$String)

//LABEL
(WHILE_EXP0$String)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_738
D;JLT
@SP
A=M
M=0
@END_738
0;JMP
(IfTrue_738)
@SP
A=M
M=-1
(END_738)
@SP
M=M+1

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$String
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_739
D;JLT
@SP
A=M
M=0
@END_739
0;JMP
(IfTrue_739)
@SP
A=M
M=-1
(END_739)
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_740
D;JGT
@SP
A=M
M=0
@END_740
0;JMP
(IfTrue_740)
@SP
A=M
M=-1
(END_740)
@SP
M=M+1

//or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$String
D;JNE

//GOTO
@IF_FALSE2$String
0;JMP

//LABEL
(IF_TRUE2$String)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply741
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply741)

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE2$String)

//GOTO
@WHILE_EXP0$String
0;JMP

//LABEL
(WHILE_END0$String)

//push local 4
@4
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE3$String
D;JNE

//GOTO
@IF_FALSE3$String
0;JMP

//LABEL
(IF_TRUE3$String)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE3$String)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.setInt 4
(String.setInt)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_742
D;JEQ
@SP
A=M
M=0
@END_742
0;JMP
(IfTrue_742)
@SP
A=M
M=-1
(END_742)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$String
D;JNE

//GOTO
@IF_FALSE0$String
0;JMP

//LABEL
(IF_TRUE0$String)

//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error743
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error743)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$String)

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//push return addr
@return_Array.new744
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.new
@Array.new
0;JMP
(return_Array.new744)

//pop local 2
@2
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_745
D;JLT
@SP
A=M
M=0
@END_745
0;JMP
(IfTrue_745)
@SP
A=M
M=-1
(END_745)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE1$String
D;JNE

//GOTO
@IF_FALSE1$String
0;JMP

//LABEL
(IF_TRUE1$String)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//pop local 3
@3
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE1$String)

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP0$String)

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_746
D;JGT
@SP
A=M
M=0
@END_746
0;JMP
(IfTrue_746)
@SP
A=M
M=-1
(END_746)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$String
D;JNE

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//push return addr
@return_Math.divide747
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.divide
@Math.divide
0;JMP
(return_Math.divide747)

//pop local 1
@1
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//push return addr
@return_Math.multiply748
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.multiply
@Math.multiply
0;JMP
(return_Math.multiply748)

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 1
@1
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 1
@1
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$String
0;JMP

//LABEL
(WHILE_END0$String)

//push local 3
@3
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE2$String
D;JNE

//GOTO
@IF_FALSE2$String
0;JMP

//LABEL
(IF_TRUE2$String)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE2$String)

//push this 0
@0
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_749
D;JLT
@SP
A=M
M=0
@END_749
0;JMP
(IfTrue_749)
@SP
A=M
M=-1
(END_749)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE3$String
D;JNE

//GOTO
@IF_FALSE3$String
0;JMP

//LABEL
(IF_TRUE3$String)

//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error750
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error750)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE3$String)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_751
D;JEQ
@SP
A=M
M=0
@END_751
0;JMP
(IfTrue_751)
@SP
A=M
M=-1
(END_751)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE4$String
D;JNE

//GOTO
@IF_FALSE4$String
0;JMP

//LABEL
(IF_TRUE4$String)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@IF_END4$String
0;JMP

//LABEL
(IF_FALSE4$String)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP1$String)

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_752
D;JLT
@SP
A=M
M=0
@END_752
0;JMP
(IfTrue_752)
@SP
A=M
M=-1
(END_752)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END1$String
D;JNE

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

//push temp 0
@0
D=A
@5
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push this 2
@2
D=A
@THIS
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP1$String
0;JMP

//LABEL
(WHILE_END1$String)

//LABEL
(IF_END4$String)

//push local 2
@2
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Array.dispose 1

//push return addr
@return_Array.dispose753
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Array.dispose
@Array.dispose
0;JMP
(return_Array.dispose753)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.newLine 0
(String.newLine)

//push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.backSpace 0
(String.backSpace)

//push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function String.doubleQuote 0
(String.doubleQuote)

//push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
//________________________Sys______________

//function Sys.init 0
(Sys.init)

//call Memory.init 0

//push return addr
@return_Memory.init754
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Memory.init
@Memory.init
0;JMP
(return_Memory.init754)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call Math.init 0

//push return addr
@return_Math.init755
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Math.init
@Math.init
0;JMP
(return_Math.init755)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call Screen.init 0

//push return addr
@return_Screen.init756
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Screen.init
@Screen.init
0;JMP
(return_Screen.init756)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call Output.init 0

//push return addr
@return_Output.init757
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.init
@Output.init
0;JMP
(return_Output.init757)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call Keyboard.init 0

//push return addr
@return_Keyboard.init758
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Keyboard.init
@Keyboard.init
0;JMP
(return_Keyboard.init758)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call Main.main 0

//push return addr
@return_Main.main759
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Main.main
@Main.main
0;JMP
(return_Main.main759)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call Sys.halt 0

//push return addr
@return_Sys.halt760
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.halt
@Sys.halt
0;JMP
(return_Sys.halt760)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Sys.halt 0
(Sys.halt)

//LABEL
(WHILE_EXP0$Sys)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Sys
D;JNE

//GOTO
@WHILE_EXP0$Sys
0;JMP

//LABEL
(WHILE_END0$Sys)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Sys.wait 1
(Sys.wait)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_761
D;JLT
@SP
A=M
M=0
@END_761
0;JMP
(IfTrue_761)
@SP
A=M
M=-1
(END_761)
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@IF_TRUE0$Sys
D;JNE

//GOTO
@IF_FALSE0$Sys
0;JMP

//LABEL
(IF_TRUE0$Sys)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//push return addr
@return_Sys.error762
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.error
@Sys.error
0;JMP
(return_Sys.error762)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(IF_FALSE0$Sys)

//LABEL
(WHILE_EXP0$Sys)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_763
D;JGT
@SP
A=M
M=0
@END_763
0;JMP
(IfTrue_763)
@SP
A=M
M=-1
(END_763)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END0$Sys
D;JNE

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//LABEL
(WHILE_EXP1$Sys)

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IfTrue_764
D;JGT
@SP
A=M
M=0
@END_764
0;JMP
(IfTrue_764)
@SP
A=M
M=-1
(END_764)
@SP
M=M+1

//not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//IF
@SP
M=M-1
A=M
D=M
@WHILE_END1$Sys
D;JNE

//push local 0
@0
D=A
@LCL
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop local 0
@0
D=A
@LCL
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP1$Sys
0;JMP

//LABEL
(WHILE_END1$Sys)

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop argument 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//GOTO
@WHILE_EXP0$Sys
0;JMP

//LABEL
(WHILE_END0$Sys)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP

//function Sys.error 0
(Sys.error)

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//push return addr
@return_String.new765
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.new
@String.new
0;JMP
(return_String.new765)

//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar766
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar766)

//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar767
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar767)

//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//push return addr
@return_String.appendChar768
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@2
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto String.appendChar
@String.appendChar
0;JMP
(return_String.appendChar768)

//call Output.printString 1

//push return addr
@return_Output.printString769
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printString
@Output.printString
0;JMP
(return_Output.printString769)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push argument 0
@0
D=A
@ARG
A=M
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.printInt 1

//push return addr
@return_Output.printInt770
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@1
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Output.printInt
@Output.printInt
0;JMP
(return_Output.printInt770)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//call Sys.halt 0

//push return addr
@return_Sys.halt771
D=A
@SP
A=M
M=D
@SP
M=M+1

//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//ARG=SP-5-n
@5
D=A
@0
D=A+D
@SP
D=M-D
@ARG
M=D

//LCL=SP
@SP
D=M
@LCL
M=D

//goto Sys.halt
@Sys.halt
0;JMP
(return_Sys.halt771)

//pop temp 0
@0
D=A
@5
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//FRAME=LCL
@LCL
D=M
@R13
M=D

//RET=*(FRAME-5)
@R13
D=M
@5
A=D-A
D=M
@R14
M=D

//*ARG=pop ARG 0
@0
D=A
@ARG
A=M
D=A+D
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D
@R15
M=0

//SP=ARG+1
@ARG
D=M+1
@SP
M=D

//THAT=*(FRAME-1)
@R13
D=M
@1
A=D-A
D=M
@THAT
M=D

//ARG=*(FRAME-2)
@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

//ARG=*(FRAME-3)
@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

//LCL=*(FRAME-4)
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

//goto RET
@R14
A=M
0;JMP
