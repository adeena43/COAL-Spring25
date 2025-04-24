INCLUDE Irvine32.inc
.code

main PROC
mov eax, 5
mov ebx, 0


_while:
cmp eax, ebx
jb _whileLoop
jmp quit
_whileLoop:
inc ebx
push eax
mov eax, ebx
call WriteInt
pop eax
jmp _while


exit
main ENDP
END main
