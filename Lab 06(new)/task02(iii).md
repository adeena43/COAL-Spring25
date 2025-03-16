```asm
INCLUDE Irvine32.inc

.code
main PROC
            
    mov ecx, 4  
    mov ebx, 4
L1:
    mov eax, 4 
    push ecx
    mov ecx, ebx
L2:
    call WriteInt
    dec eax
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
![image](https://github.com/user-attachments/assets/aa0f605c-0ec6-498e-9467-6955a0298590)
