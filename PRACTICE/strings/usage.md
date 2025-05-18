```asm
INCLUDE Irvine32.inc

.data
str1 BYTE "Hello",0
str2 BYTE "World",0

.code
main PROC
    mov  esi, OFFSET str1  ; Point ESI to first string
    mov  edi, OFFSET str2  ; Point EDI to second string
    call Str_compare       ; Compare the strings
    
    ; Results:
    ; ZF=1 and CF=0 if strings equal
    ; CF=1 if str1 < str2
    ; CF=0 if str1 > str2
    jb   str1_less         ; Jump if str1 < str2
    ja   str1_greater      ; Jump if str1 > str2
    ; else equal
    
str1_less:
    ; Your code here
    jmp done
    
str1_greater:
    ; Your code here
    
done:
    exit
main ENDP
END main
```

```asm
INCLUDE Irvine32.inc

.data
myString BYTE "Hello, Assembly!",0
strLen DWORD ?

.code
main PROC
    mov  edx, OFFSET myString  ; Point EDX to string
    call Str_length            ; Length returned in EAX
    mov  strLen, eax           ; Store length
    
    ; Display the length
    call WriteDec              ; Irvine32 function to display EAX
    call Crlf
    
    exit
main ENDP
END main
```

```asm
INCLUDE Irvine32.inc

.data
source BYTE "Original string",0
target BYTE SIZEOF source DUP(0),0  ; Buffer for copy

.code
main PROC
    mov  esi, OFFSET source  ; Source pointer
    mov  edi, OFFSET target  ; Target pointer
    call Str_copy            ; Copy the string
    
    ; Display results
    mov  edx, OFFSET target
    call WriteString
    call Crlf
    
    exit
main ENDP
END main
```

```asm
INCLUDE Irvine32.inc

.data
myString BYTE "Hello!!!",0
charToTrim BYTE '!'

.code
main PROC
    mov  edi, OFFSET myString  ; String to trim
    mov  al, charToTrim        ; Character to remove
    call Str_trim              ; Trim the string
    
    ; Display results
    mov  edx, OFFSET myString
    call WriteString
    call Crlf
    
    exit
main ENDP
END main
```

```asm
INCLUDE Irvine32.inc

.data
myString BYTE "lowercase string",0

.code
main PROC
    mov  edx, OFFSET myString  ; String to convert
    call Str_ucase             ; Convert to uppercase
    
    ; Display results
    call WriteString
    call Crlf
    
    exit
main ENDP
END main
```
