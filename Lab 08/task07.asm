INCLUDE Irvine32.inc
.data
var DWORD 0
Mon BYTE "Monday", 0
Tues BYTE "Tuesday", 0
Wed BYTE "Wednesday", 0
Thurs BYTE "Thursday", 0
Fri BYTE "Friday", 0
Sat BYTE "Saturday", 0
Sun BYTE "Sunday", 0
inputMsg BYTE "Enter a number in the range of 1-7 only: "
.code
main PROC

mov edx, OFFSET inputMsg
call WriteString
call ReadInt
cmp eax, 1
je _mon
cmp eax, 2
je _tues
cmp eax, 3
je _wed
cmp eax, 4
je _thurs
cmp eax, 5
je _fri
cmp eax, 6
je _sat
cmp eax, 7
je _sun

_mon:
mov edx, OFFSET Mon
call WriteString
exit

_tues:
mov edx, OFFSET Tues
call WriteString
exit

_wed:
mov edx, OFFSET Wed
call WriteString
exit

_thurs:
mov edx, OFFSET Thurs
call WriteString
exit

_fri:
mov edx, OFFSET Fri
call WriteString
exit

_sat:
mov edx, OFFSET Sat
call WriteString
exit

_sun:
mov edx, OFFSET Sun
call WriteString
exit

main ENDP
END main
