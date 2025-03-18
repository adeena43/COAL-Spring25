INCLUDE Irvine32.inc 
.code
main PROC
    mov esi, 1
row_loop:
    mov edx, 1

col_loop:
    mov eax, esi
    imul eax, edx
    call WriteInt
    inc edx
    cmp edx, 11
    jne col_loop

    call Crlf
    inc esi
    cmp esi, 6
    jne row_loop

    exit                          
main ENDP 
END main
