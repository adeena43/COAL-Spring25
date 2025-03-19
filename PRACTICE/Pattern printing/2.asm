```asm
INCLUDE Irvine32.inc  
.data
    nine BYTE "9", 0
    eight BYTE "8", 0
    space BYTE " ", 0

.code
main PROC
    mov ecx, 4    
    mov ebx, 2     
    mov eax, 3   

rectangle:
    push ecx       
    mov ecx, ebx   


print_spaces:
    cmp ecx, 0
    je print_eights    
    mov edx, OFFSET space
    call WriteString
    loop print_spaces 
print_eights:
    mov ecx, eax      
print_loop:
    mov edx, OFFSET eight
    call WriteString
    loop print_loop   
    call Crlf

    pop ecx     
    loop rectangle     

 
    mov ecx, 4
    mov eax, 0     ;for printing spaces
    mov ebx, 7      ;for printing nines
triangle:
    push ecx          

    mov ecx, eax
print_spaces_9:
    cmp ecx, 0
    je print_nines  
    mov edx, OFFSET space
    call WriteString
    loop print_spaces_9

print_nines: 
    mov ecx, ebx
print_loop_9:
    mov edx, OFFSET nine
    call WriteString
    loop print_loop_9
    call Crlf

    sub ebx, 2
    add eax, 1

    pop ecx           
    loop triangle

    exit
main ENDP
END main

```

