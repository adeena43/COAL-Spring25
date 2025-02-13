TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc
.data
val1 SWORD -2147483648
.code
main PROC

call DumpRegs
exit
main ENDP
END main
