TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc
.code
main PROC

mov eax, 101110b
add eax, 50Ah
add eax, 6710d
add eax, 1010001d
add eax, 0Fh

call DumpRegs
exit
main ENDP
END main
