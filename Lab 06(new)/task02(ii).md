```asm
INCLUDE Irvine32.inc

.code
main PROC
    mov eax, 1         
    mov ecx, 4  
    mov ebx, 4
L1:
    push ecx
    mov ecx, ebx
L2:
    call WriteInt
    loop L2
    call crlf
    dec ebx
    pop ecx
    loop L1
    exit
main ENDP
END main
```
# output
![image](https://github.com/user-attachments/assets/ac2e2cad-ffe9-49e3-afb3-9cae79d64f9b)
