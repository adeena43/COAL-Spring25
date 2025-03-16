```asm
INCLUDE Irvine32.inc

.data
    numArray DWORD 15, 25, 35, 45, 55, 65  
    msg BYTE "Reversed Array: ", 0  
    separator BYTE ", ", 0  

.code
main PROC
    mov ecx, LENGTHOF numArray / 2  
    mov esi, OFFSET numArray  
    mov edi, OFFSET numArray + SIZEOF numArray - TYPE numArray  

swapLoop:
    mov eax, [esi]  
    mov ebx, [edi]  
    mov [esi], ebx  
    mov [edi], eax  
    add esi, TYPE numArray  
    sub edi, TYPE numArray  
    loop swapLoop  

    mov ecx, LENGTHOF numArray  
    mov esi, 0  
    mov edx, OFFSET msg  
    call WriteString  
    call CrLf  

printLoop:
    mov eax, numArray[esi]  
    add esi, TYPE numArray  
    call WriteDec  
    mov edx, OFFSET separator  
    call WriteString  
    loop printLoop  

    exit  
main ENDP  
END main

```
![image](https://github.com/user-attachments/assets/cbede5f6-8e93-47ee-bf52-7d87618988ff)
