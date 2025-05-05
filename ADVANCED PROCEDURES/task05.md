```asm
INCLUDE Irvine32.inc

.data
    array DWORD 10, 5, 8, 3, 1, 9, 7, 2, 4, 6  ; Test array
    arraySize DWORD LENGTHOF array
    beforeMsg BYTE "Array before sorting: ", 0
    afterMsg BYTE "Array after sorting: ", 0
    space BYTE " ", 0

.code
main PROC
    ; Display array before sorting
    mov edx, OFFSET beforeMsg
    call WriteString
    push OFFSET array
    push arraySize
    call DisplayArray
    call Crlf

    ; Call BubbleSort procedure
    push OFFSET array          ; Push array address
    push arraySize             ; Push array size
    call BubbleSort

    ; Display array after sorting
    mov edx, OFFSET afterMsg
    call WriteString
    push OFFSET array
    push arraySize
    call DisplayArray
    call Crlf

    exit
main ENDP

; BubbleSort procedure
; Receives: [ebp+12] = array address
;           [ebp+8]  = array size
BubbleSort PROC
    push ebp
    mov ebp, esp
    pushad                     ; Save all registers

    mov esi, [ebp+12]          ; ESI = array address
    mov ecx, [ebp+8]           ; ECX = array size
    dec ecx                    ; ECX = outer loop counter (n-1)

outerLoop:
    mov edx, ecx               ; EDX = inner loop counter
    mov edi, esi               ; EDI points to first element

innerLoop:
    mov eax, [edi]             ; Load current element
    mov ebx, [edi+4]           ; Load next element
    cmp eax, ebx
    jle noSwap                 ; If [edi] <= [edi+4], no swap

    ; Swap elements
    mov [edi+4], eax
    mov [edi], ebx

noSwap:
    add edi, 4                 ; Move to next element
    dec edx
    jnz innerLoop              ; Continue inner loop

    loop outerLoop             ; Continue outer loop

    popad                      ; Restore all registers
    pop ebp
    ret 8                      ; Clean up stack (2 parameters)
BubbleSort ENDP

; DisplayArray procedure
; Receives: [ebp+12] = array address
;           [ebp+8]  = array size
DisplayArray PROC
    push ebp
    mov ebp, esp
    pushad                     ; Save all registers

    mov esi, [ebp+12]          ; ESI = array address
    mov ecx, [ebp+8]           ; ECX = array size

displayLoop:
    mov eax, [esi]
    call WriteInt
    mov edx, OFFSET space
    call WriteString
    add esi, 4
    loop displayLoop

    popad                      ; Restore all registers
    pop ebp
    ret 8                      ; Clean up stack (2 parameters)
DisplayArray ENDP

END main
```
![image](https://github.com/user-attachments/assets/150e48ee-6ae5-4acd-b29e-405c2bd03611)
