```asm
.386
.model flat, stdcall
.stack 4096
INCLUDE Irvine32.inc

ExitProcess PROTO, dwExitCode:DWORD

.data
array DWORD 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
arraySize = ($ - array) / TYPE array
prompt BYTE "Enter an integer value to search: ",0
foundMsg BYTE "Value found in the array!",0
notFoundMsg BYTE "Value not found in the array.",0
userValue DWORD ?

.code
main PROC
    ; Ask user for input
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov userValue, eax
    
    ; Setup parameters and call recursive search
    INVOKE RecursiveSearch, userValue, 0, arraySize - 1
    
    ; Check return value (EAX)
    cmp eax, -1
    je NotFound
    mov edx, OFFSET foundMsg
    jmp DisplayMsg
NotFound:
    mov edx, OFFSET notFoundMsg
DisplayMsg:
    call WriteString
    call Crlf
    
    INVOKE ExitProcess, 0
main ENDP

RecursiveSearch PROC USES ebx esi edi, 
    value:DWORD, 
    lowIdx:DWORD, 
    highIdx:DWORD
    
    ; Base case 1: low > high (not found)
    mov eax, lowIdx
    cmp eax, highIdx
    jg NotFound
    
    ; Calculate mid index
    mov ebx, lowIdx
    add ebx, highIdx
    shr ebx, 1       ; EBX = mid index
    
    ; Get array[mid]
    mov esi, OFFSET array
    mov edi, [esi + ebx*4]
    
    ; Base case 2: if array[mid] == value
    cmp edi, value
    je Found
    
    ; Recursive cases
    jl SearchRight   ; If array[mid] < value, search right half
    
    ; Else search left half
    dec ebx          ; high = mid - 1
    INVOKE RecursiveSearch, value, lowIdx, ebx
    jmp Done
    
SearchRight:
    inc ebx          ; low = mid + 1
    INVOKE RecursiveSearch, value, ebx, highIdx
    jmp Done
    
Found:
    mov eax, ebx     ; Return index
    jmp Done
    
NotFound:
    mov eax, -1      ; Return -1 for not found
    
Done:
    ret
RecursiveSearch ENDP

END main
```
