TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc
.data
list WORD 1, 2, 3
.code
main PROC

call DumpRegs
exit
main ENDP
END main
