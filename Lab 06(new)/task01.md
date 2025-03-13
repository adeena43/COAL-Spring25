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

# output
![image](https://github.com/user-attachments/assets/ae70ed21-6388-4ab9-b169-a1603e1b7f2b)
