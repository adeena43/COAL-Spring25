INCLUDE Irvine32.inc
.data
var DWORD 0
Hmsg BYTE "Hello ", 0
Wmsg BYTE "World ", 0
.code
main PROC

_while:
cmp var, 10
ja _endwhile
cmp var, 5
jb _hello
jmp _world

_hello:
mov edx, OFFSET Hmsg
call WriteString
call Crlf
inc var
jmp _while

_world:
mov edx, OFFSET Wmsg
call WriteString
call Crlf
inc var
jmp _while

_endwhile:
exit

main ENDP
END main
