TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc
.data
var1 BYTE 10
.code
main PROC

mov AL, var1
add AL, 40
movzx eax, AL 
call WriteDec

call DumpRegs
exit
main ENDP
END main
