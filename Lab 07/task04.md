```asm
INCLUDE Irvine32.inc

.data
    star BYTE '*',0
    space BYTE ' ',0
    cols DWORD 5

.code
main PROC
    mov ecx, cols
    call PrintRightTriangle
    exit
main ENDP

PrintRightTriangle PROC uses ebx esi edi
    mov ebx, 1

RowLoop:
    mov edi, cols
    sub edi, ebx
    
    mov esi, 0
    SpaceLoop:
        cmp esi, edi
        jae StarPrint
        mov edx, OFFSET space
        call WriteString
        inc esi
        jmp SpaceLoop

    StarPrint:
    mov esi, 0
    StarLoop:
        mov edx, OFFSET star
        call WriteString
        inc esi
        cmp esi, ebx
        jb StarLoop
    
    call Crlf
    inc ebx
    loop RowLoop
    
    ret
PrintRightTriangle ENDP

END main
```
![image](https://github.com/user-attachments/assets/d23dcfbd-147b-4556-9e79-8410a64b86d0)
