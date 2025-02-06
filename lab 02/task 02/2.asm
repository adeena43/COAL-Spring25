INCLUDE Irvine32.inc
.code
main PROC

mov ebx, 5ADh
sub ebx, eax  
add ebx, 65d  
add ebx, 73o  
sub ebx, 11100101b 
add ebx, 7Bh  
call DumpRegs
exit
main ENDP
END main
