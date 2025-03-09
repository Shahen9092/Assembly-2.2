@0
D=A
@R2
M=D

@R1
D=M
@end
D;JLE

@0
D=A
@R3
M=D

@R0
D=M
@R4
M=D

(loop)
@R3
D=M
@R1
D=M-D
@end
D;JEQ

@R4
A=M
D=M

@R2
M=M+D

@R3
M=M+1
@R4
M=M+1
@loop
0;JMP

(end)
