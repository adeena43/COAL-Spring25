```asm
INCLUDE Irvine32.inc
;will correct it latter
.data
Arr1 DWORD 1, 2, 3, 4, 5      
Arr2 DWORD 10, 20, 30, 40, 50 
Sum1 DWORD ?                  
Sum2 DWORD ?                  
Total DWORD ?                 

.code
main PROC
    call SumArray1  
    call SumArray2  
    call TotalSum   

    exit
main ENDP

SumArray1 PROC
    mov ecx, 5         
    mov esi, OFFSET Arr1 
    xor eax, eax        

SumLoop1:
    add eax, [esi]      
    add esi, 4          
    loop SumLoop1       

    mov Sum1, eax      
    ret
SumArray1 ENDP

SumArray2 PROC
    mov ecx, 5         
    mov esi, OFFSET Arr2 
    xor eax, eax      
SumLoop2:
    add eax, [esi]      
    add esi, 4         
    loop SumLoop2      

    mov Sum2, eax      
    ret
SumArray2 ENDP

TotalSum PROC
    mov eax, Sum1      
    add eax, Sum2       
    mov Total, eax     

    call WriteDec       
    call Crlf          
    ret
TotalSum ENDP

END main
```
![image](https://github.com/user-attachments/assets/0c6648f8-d219-4b63-af46-e4ba7dcd5589)
