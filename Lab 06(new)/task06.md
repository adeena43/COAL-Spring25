```asm
INCLUDE Irvine32.inc   

.data
    array DWORD 8, 5, 1, 2, 6    
    n DWORD 5                    

.code
main PROC
    mov ecx, n                
    dec ecx                    

bubble_outer:
    mov ebx, 0                 
    
bubble_inner:
    mov eax, [array + ebx*4]   
    mov edx, [array + ebx*4 + 4] 
    cmp eax, edx                
    jle no_swap                 
    
    mov [array + ebx*4], edx    
    mov [array + ebx*4 + 4], eax 
    
no_swap:
    inc ebx                     
    cmp ebx, ecx                
    jl bubble_inner             

    dec ecx                     
    jnz bubble_outer            

    mov ebx, 0                   

print_loop:
    mov eax, [array + ebx*4]     
    call WriteInt                
    call Crlf                    
    inc ebx                       
    cmp ebx, n                    
    jl print_loop                 

    exit                          
main ENDP 
END main

```
![image](https://github.com/user-attachments/assets/43f6065e-266b-46c3-aa3d-df7e35d42258)
