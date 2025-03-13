```asm
include irvine32.inc
.code
main proc
	mov ecx, 10
	mov eax, 0
	mov ebx, 0
	call WriteInt
	mov eax, 1
	call WriteInt
	mov eax, 1
L1:
	mov edx,eax
	add eax,ebx
	mov ebx, edx
	CALL WriteInt
	loop L1
exit
main endp
end main
```
