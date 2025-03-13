# TASK2 (i)

```asm
INCLUDE Irvine32.inc

.code
main PROC
    mov eax, 1         
    mov ecx, 4  
    mov ebx, 1
L1:
    push ecx
    mov ecx, ebx
L2:
    call WriteInt
    loop L2
    call crlf
    inc ebx
    pop ecx
    loop L1
    exit
main ENDP
END main
```

# OUTPUT:
![image](https://github.com/user-attachments/assets/a4feab37-5432-41b0-ad99-8a744f94c5d4)

