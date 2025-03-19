INCLUDE Irvine32.inc  

.data
    a BYTE 2
    b BYTE 3
    result DWORD ?     
    msg BYTE "Result of (a + b)^3: ", 0

.code
main PROC
    ; Calculate a^3
    movzx ax, a       ; AX = a
    imul ax, a        ; AX = a^2
    imul ax, a        ; AX = a^3
    mov cx, ax        ; Store a^3 in CX

    ; Calculate b^3
    movzx ax, b       ; AX = b
    imul ax, b        ; AX = b^2
    imul ax, b        ; AX = b^3
    mov dx, ax        ; Store b^3 in DX

    ; Calculate 3a^2b
    movzx ax, a       ; AX = a
    imul ax, a        ; AX = a^2
    imul ax, b        ; AX = a^2 * b
    mov bx, 3
    imul ax, bx       ; AX = 3a^2b
    mov si, ax        ; Store 3a^2b in SI

    ; Calculate 3ab^2
    movzx ax, a       ; AX = a
    imul ax, b        ; AX = ab
    imul ax, b        ; AX = ab^2
    imul ax, bx       ; AX = 3ab^2
    mov di, ax        ; Store 3ab^2 in DI

    ; Summing up all terms: result = a^3 + b^3 + 3a^2b + 3ab^2
    movzx eax, cx     ; EAX = a^3
    add eax, dx       ; EAX += b^3
    add eax, si       ; EAX += 3a^2b
    add eax, di       ; EAX += 3ab^2

    mov result, eax   ; Store final result

    ; Print the result
    mov edx, OFFSET msg
    call WriteString

    mov eax, result
    call WriteInt      

    exit
main ENDP
END main
