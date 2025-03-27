```asm
INCLUDE Irvine32.inc
.data
arr1 WORD 1,2,3,4,5,6,7,8,9,10
arr2 WORD 10 DUP(?)

.code
main PROC
    mov esi, OFFSET arr1
    mov edi, OFFSET arr2
    mov ecx, 10

L1:
    mov ax, [esi]
    mov [edi], ax
    add esi, 2
    add edi, 2
    loop L1

    mov esi, OFFSET arr2
    mov ecx, 10

L2:
    mov ax, [esi]
    movzx eax, ax
    call WriteDec
    call Crlf
    add esi, 2
    loop L2

    exit
main ENDP
END main

```
![image](https://github.com/user-attachments/assets/20717be4-f386-47e3-ae84-c0a3340cffb2)
