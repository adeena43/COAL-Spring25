INCLUDE Irvine32.inc

.data
    salesWeek1 WORD 5 DUP(?)        ; Array for week 1 sales
    salesWeek2 WORD 5 DUP(?)        ; Array for week 2 sales
    totalSales WORD 5 DUP(?)        ; Array to store total sales
    prompt1 BYTE "Enter sales for week 1 (5 values): ", 0
    prompt2 BYTE "Enter sales for week 2 (5 values): ", 0
    msg BYTE "Total sales per snack type: ", 0
    newLine BYTE 10, 13, 0

.code
main PROC
    mov edx, OFFSET prompt1
    call WriteString
    call Crlf

    ; Taking input for Week 1
    mov esi, OFFSET salesWeek1

    call ReadInt
    mov [esi], ax

    call ReadInt
    mov [esi+2], ax

    call ReadInt
    mov [esi+4], ax

    call ReadInt
    mov [esi+6], ax

    call ReadInt
    mov [esi+8], ax

    mov edx, OFFSET prompt2
    call WriteString
    call Crlf

    ; Taking input for Week 2
    mov edi, OFFSET salesWeek2

    call ReadInt
    mov [edi], ax

    call ReadInt
    mov [edi+2], ax

    call ReadInt
    mov [edi+4], ax

    call ReadInt
    mov [edi+6], ax

    call ReadInt
    mov [edi+8], ax

    ; Compute total sales
    mov ebx, OFFSET totalSales

    mov ax, [esi]      
    add ax, [edi]
    mov [ebx], ax

    mov ax, [esi+2]    
    add ax, [edi+2]
    mov [ebx+2], ax

    mov ax, [esi+4]    
    add ax, [edi+4]
    mov [ebx+4], ax

    mov ax, [esi+6]    
    add ax, [edi+6]
    mov [ebx+6], ax

    mov ax, [esi+8]    
    add ax, [edi+8]
    mov [ebx+8], ax

    ; Display total sales
    mov edx, OFFSET msg
    call WriteString
    call Crlf

    mov ax, [ebx]
    call WriteDec
    call Crlf

    mov ax, [ebx+2]
    call WriteDec
    call Crlf

    mov ax, [ebx+4]
    call WriteDec
    call Crlf

    mov ax, [ebx+6]
    call WriteDec
    call Crlf

    mov ax, [ebx+8]
    call WriteDec
    call Crlf

    exit
main ENDP
END main
