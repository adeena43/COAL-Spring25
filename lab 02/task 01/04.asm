TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc
.code
main PROC

mov eax, 10001101b
sub eax, D83h
add eax, 385
add eax, 10
add eax, 1111101
sub eax, 0Eh
sub eax, 0Fh

call DumpRegs
exit
main ENDP
END main
