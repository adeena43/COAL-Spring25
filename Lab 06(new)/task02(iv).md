```asm
INCLUDE Irvine32.inc

.code
main PROC
            
    mov ecx, 4  
    mov ebx, 4
L1:
    mov eax, 1
    push ecx
    mov ecx, ebx
L2:
    call WriteInt
    inc eax
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
![image](https://github.com/user-attachments/assets/81d0c749-4fbc-4ee8-9d42-f10e6f3a5a57)
