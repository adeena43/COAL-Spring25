```asm
INCLUDE Irvine32.inc
.data
var1 WORD 32
var2 WORD 44
var3 WORD 56
.code
main PROC
    movzx eax, var1
    movzx ebx, var2
    movzx ecx, var3

    push eax
    push ebx
    push ecx

    pop ecx
    pop ebx
    pop eax

    add eax, ebx
    add eax, ecx

    call WriteDec

    exit
main ENDP
END main

```
![image](https://github.com/user-attachments/assets/718d5ce7-74a8-4b2a-9d97-5020c61d3aa4)
