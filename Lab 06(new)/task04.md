```asm
INCLUDE Irvine32.inc

.data
    textSource BYTE "Adeena", 0
    textCopy BYTE 7 DUP(?)  

.code
main PROC         
    mov ecx, SIZEOF textSource - 1  
    mov esi, 0

copyLoop:
    mov al, textSource[esi]
    mov textCopy[esi], al
    inc esi
    loop copyLoop

    mov textCopy[esi], 0  

    mov edx, OFFSET textCopy
    call WriteString

    exit
main ENDP
END main

```
![image](https://github.com/user-attachments/assets/3d04fcbb-28e6-4d44-a268-1d5aabb374b5)
