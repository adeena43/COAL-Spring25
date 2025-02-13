TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc
.data
val1 SWORD ?
val2 SBYTE -11
val3 BYTE 99
.code
main PROC

call DumpRegs
exit
main ENDP
END main
