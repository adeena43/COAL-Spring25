```asm
INCLUDE Irvine32.inc  
.data
    star BYTE "*", 0
    space BYTE " ", 0

.code
main PROC
    mov ecx, 4       
    mov ebx, 3       
    mov eax, 1       

L1:
    push ecx         

    mov ecx, ebx     
print_spaces:
    cmp ecx, 0
    je print_stars   
    mov edx, OFFSET space
    call WriteString
    loop print_spaces  

print_stars:
    mov ecx, eax     
print_loop:
    mov edx, OFFSET star
    call WriteString
    loop print_loop   

    call Crlf        

    pop ecx          
    sub ebx, 1       
    add eax, 1      
    loop L1          

    exit
main ENDP
END main

```
![image](https://github.com/user-attachments/assets/2a6b3a36-597e-4904-879e-d5e40b083c61)
