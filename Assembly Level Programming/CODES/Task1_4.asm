ORG 0000H
MOV A, #00H
MOV DPTR, #0200H
MOV R1, #0EH
MOV R0, #40H
//22BCI0198
LOOP: CLR A
MOVC A,@A+DPTR
MOV @R0,A
INC DPTR
INC R0
DJNZ R1, LOOP
HERE: SJMP HERE
ORG 0200H
DB "VIT UNIVERSITY"
END