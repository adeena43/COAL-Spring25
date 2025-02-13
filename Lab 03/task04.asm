TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc
.data
color BYTE "Black", 0
A WORD 12
B WORD 2
C WORD 13
D WORD 8
E WORD 14

.code
main PROC

call DumpRegs
exit
main ENDP
END main
