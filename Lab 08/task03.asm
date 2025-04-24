INCLUDE Irvine32.inc
.data
x DWORD 0
var1 DWORD 5
.code
main PROC
mov ecx, 10
mov edx, 6
cmp var1, ecx
jb _and
jmp _else

_and:
cmp ecx, edx
jae _if
jmp _else

_if:
mov x, 0
mov eax, x
call WriteInt
exit

_else:
mov x, 1
mov eax, x
call WriteInt
exit

main ENDP
END main
