INCLUDE Irvine32.inc
.data
var1 DWORD 5
var2 DWORD 6
.code

main PROC
mov eax, 1
call sub1
call writeint
call crlf
exit
main ENDP
sub1 PROC
call sub2
ret
sub1 ENDP

sub3 PROC
add eax, 5
ret
sub3 ENDP

sub2 PROC
call sub3
ret
sub2 ENDP
END main
