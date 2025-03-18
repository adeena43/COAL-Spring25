INCLUDE Irvine32.inc 

.data
    var1 BYTE 1
    var2 BYTE 6
    var3 BYTE 4
    var4 BYTE 8

    result DWORD 0  
    temp DWORD 0    
    number DWORD 1648  

    armstrong_msg BYTE "1648 is an Armstrong number!", 0
    not_armstrong_msg BYTE "1648 is NOT an Armstrong number!", 0

.code
main PROC
    mov eax, 0  
    mov result, 0  

    ; Compute var1^4
    movzx ebx, var1 
    mov ecx, 3      
    mov edx, ebx    
power1:
    push ecx         
    mov ecx, edx     
    mov temp, 0      
mul_loop1:
    add temp, ebx   
    loop mul_loop1
    mov ebx, temp    
    pop ecx         
    loop power1
    add result, ebx  


    movzx ebx, var2
    mov ecx, 3
    mov edx, ebx
power2:
    push ecx
    mov ecx, edx
    mov temp, 0
mul_loop2:
    add temp, ebx
    loop mul_loop2
    mov ebx, temp
    pop ecx
    loop power2
    add result, ebx

    ; Compute var3^4
    movzx ebx, var3
    mov ecx, 3
    mov edx, ebx
power3:
    push ecx
    mov ecx, edx
    mov temp, 0
mul_loop3:
    add temp, ebx
    loop mul_loop3
    mov ebx, temp
    pop ecx
    loop power3
    add result, ebx

    ; Compute var4^4
    movzx ebx, var4
    mov ecx, 3
    mov edx, ebx
power4:
    push ecx
    mov ecx, edx
    mov temp, 0
mul_loop4:
    add temp, ebx
    loop mul_loop4
    mov ebx, temp
    pop ecx
    loop power4
    add result, ebx

    ; Print result
    mov eax, result  
    call WriteInt    
    call Crlf        
    mov eax, result  
    cmp eax, number  
    je armstrong     

    mov edx, OFFSET not_armstrong_msg
    call WriteString
    jmp done

armstrong:
    mov edx, OFFSET armstrong_msg
    call WriteString

done:
    exit

main ENDP
END main
