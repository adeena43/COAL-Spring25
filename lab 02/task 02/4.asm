TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc
.code
main PROC

mov ecx, 110010101101b
add ecx, 45h
sub ecx, 73o
add ecx, ebx
sub ecx, ecx
add ecx, 1

call DumpRegs
exit
main ENDP
END main
