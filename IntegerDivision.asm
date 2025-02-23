@0
D=A
@R2
M=D

@0
D=A
@R4
M=D

@R1
D=M
@undefined
D;JEQ

@R0
D=M
@X
M=D 
@ifXneg
D;JLT

(checkY)
@R1
D=M
@Y
M=D
@ifYneg
D;JLT

@divide
0;JMP

(ifXneg)
@X
D=M
D=-D
@X
M=D
@checkY
0;JMP


(ifYneg)
@Y
D=M
D=-D
@Y
M=D

(divide)
@X
D=M
@Y
D=D-M
@breakLoop
D;JLT
@X
M=D
@R2
M=M+1
@divide
0;JMP

(breakLoop)
@X
D=M
@R3
M=D

@R0
D=M
@setQneg
D;JLT

@exit
0;JMP

(setQneg)
@R3
M=-M

@exit
0;JMP

(undefined)
@1
D=A
@R4
M=D
(exit)