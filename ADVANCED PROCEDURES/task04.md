```asm
INCLUDE Irvine32.inc

.data
    numbers DWORD 4 DUP(?)       ; Array to store 4 numbers
    prompt BYTE "Enter a number: ", 0
    primeMsg BYTE " is prime", 0
    notPrimeMsg BYTE " is not prime", 0
    allPrimeMsg BYTE "All numbers are prime. Finding largest...", 0
    largestMsg BYTE "The largest prime is: ", 0
    notAllPrimeMsg BYTE "Not all numbers are prime", 0

.code
main PROC
    ; Get 4 numbers from user
    mov ecx, 4
    mov esi, OFFSET numbers
input_loop:
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov [esi], eax
    add esi, 4
    loop input_loop

    ; Check if all numbers are prime
    mov ecx, 4
    mov esi, OFFSET numbers
    mov ebx, 1                  ; Assume all are prime (1 = true)
    
check_all_prime:
    push [esi]                  ; Push current number
    call CheckPrime
    add esp, 4                  ; Clean stack
    cmp eax, 0                  ; Check return value (0 = not prime)
    je not_prime
    add esi, 4
    loop check_all_prime
    jmp all_prime

not_prime:
    mov ebx, 0                  ; Set flag to false

all_prime:
    cmp ebx, 1
    jne not_all_primes

    ; If all primes, find largest
    mov edx, OFFSET allPrimeMsg
    call WriteString
    call Crlf
    
    push OFFSET numbers
    push 4
    call LargestPrime
    add esp, 8                  ; Clean stack
    jmp done

not_all_primes:
    mov edx, OFFSET notAllPrimeMsg
    call WriteString
    call Crlf

done:
    exit
main ENDP

; CheckPrime procedure
; Receives: number on stack
; Returns: EAX = 1 if prime, 0 if not prime
CheckPrime PROC
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx
    
    mov eax, [ebp+8]            ; Get number
    cmp eax, 2
    jl not_prime                ; Numbers < 2 are not prime
    je is_prime                 ; 2 is prime
    
    test eax, 1
    jz not_prime                ; Even numbers > 2 are not prime
    
    mov ecx, 3                  ; Start divisor at 3
    mov ebx, eax
    shr ebx, 1                  ; Upper bound = number/2
    
check_divisors:
    cmp ecx, ebx
    jg is_prime                 ; No divisors found
    
    mov eax, [ebp+8]
    xor edx, edx
    div ecx
    cmp edx, 0
    je not_prime                ; Found a divisor
    
    add ecx, 2                 ; Check next odd number
    jmp check_divisors

is_prime:
    mov eax, 1
    jmp display_result

not_prime:
    mov eax, 0

display_result:
    push eax                    ; Save return value
    mov eax, [ebp+8]
    call WriteInt
    cmp dword ptr [esp], 1      ; Check saved return value
    je show_prime
    mov edx, OFFSET notPrimeMsg
    jmp show_msg
show_prime:
    mov edx, OFFSET primeMsg
show_msg:
    call WriteString
    call Crlf
    pop eax                     ; Restore return value
    
    pop edx
    pop ecx
    pop ebx
    pop ebp
    ret
CheckPrime ENDP

; LargestPrime procedure
; Receives: array address and count on stack
; Returns: displays largest prime
LargestPrime PROC
    push ebp
    mov ebp, esp
    push esi
    push ecx
    push ebx
    
    mov esi, [ebp+12]           ; Array address
    mov ecx, [ebp+8]            ; Count
    mov eax, [esi]              ; Initialize with first element
    
find_largest:
    cmp [esi], eax
    jle next_element
    mov eax, [esi]
next_element:
    add esi, 4
    loop find_largest
    
    mov edx, OFFSET largestMsg
    call WriteString
    call WriteInt
    call Crlf
    
    pop ebx
    pop ecx
    pop esi
    pop ebp
    ret
LargestPrime ENDP

END main
```
![image](https://github.com/user-attachments/assets/fb078860-60ea-47ee-8028-5192b429ea8c)
