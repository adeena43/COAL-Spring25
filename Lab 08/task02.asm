INCLUDE Irvine32.inc
.data
intArr SWORD 0, 0, 0, 150, 120, 35, -12, 66, 4, 0
msg BYTE "The first non-zero number is: ", 0
.code
main PROC
mov esi, OFFSET intArr
L1:
mov ax, [esi]
TEST ax, ax
jnz found
add esi, 2
loop L1
exit

found:
mov edx, OFFSET msg
call WriteString
movsx eax, ax
call WriteInt
exit

main ENDP
END main
