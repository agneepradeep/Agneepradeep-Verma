ORG 000H
MOV DPTR, #200H //22BCI0198
MOV R0, #10H
LOOP: CLR A
MOVC A,@A+DPTR
ADD A,R2
JNC NEXT
INC R3
NEXT: INC DPTR
MOV R2,A
DJNZ R0, LOOP
//22BCI0198
HERE: SJMP HERE
ORG 200H
DB 22H,43H,23H,34H,31H,77H,91H,33H,43H,7H
END