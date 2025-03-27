```asm
INCLUDE Irvine32.inc
.data
arr1 WORD 1,2,3,4,5,6,7,8,9,10
arr2 WORD 10 DUP(?)

.code
main PROC
    mov esi, OFFSET arr1       ; Point to the start of arr1
    mov edi, OFFSET arr2       ; Point to the start of arr2
    add edi, 18                ; Move to the last word of arr2 (10*2 - 2)
    mov ecx, 10                ; Loop counter (10 elements)

L1:
    mov ax, [esi]              ; Load value from arr1
    mov [edi], ax              ; Store it in arr2 (reverse order)
    add esi, 2                 ; Move to next element in arr1
    sub edi, 2                 ; Move backward in arr2
    loop L1                   

    exit                       
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/20717be4-f386-47e3-ae84-c0a3340cffb2)
