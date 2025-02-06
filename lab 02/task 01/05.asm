TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc
.code
main PROC

mov eax, 101b
sub eax, 9
add eax, 1A4h
sub eax, 569

call DumpRegs
exit
main ENDP
END main
