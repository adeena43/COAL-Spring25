INCLUDE Irvine32.inc
.data
val1 DWORD ?
val2 DWORD ?
val3 DWORD ?
val4 DWORD ?
msg BYTE "Enter an integer: ", 0
result BYTE "All the numbers are equal", 0
.code
main PROC
mov edx, OFFSET msg
call WriteString
call ReadInt
mov val1, eax

mov edx, OFFSET msg
call WriteString
call ReadInt
mov val2, eax

mov edx, OFFSET msg
call WriteString
call ReadInt
mov val3, eax

mov edx, OFFSET msg
call WriteString
call ReadInt
mov val4, eax
mov eax, val1
cmp eax, val2
je next
exit
next:
cmp eax, val3
je next2
exit
next2:
cmp eax, val4
je next3
exit
next3:
mov edx, OFFSET result
call WriteString
exit
main ENDP
END main
