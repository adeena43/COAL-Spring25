TITLE First Expression (Expr1.asm)
INCLUDE Irvine32.inc
.code
main PROC

mov eax, 10h   
mov ebx, 20h   
mov ecx, 5h    
mov edx, eax   
add edx, 1     
add edx, ebx   
sub edx, ecx   
add edx, 0Ah   
sub edx, 65o  
add edx, 73d   

call DumpRegs
exit
main ENDP
END main
