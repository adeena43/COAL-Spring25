# TASK2 (i)

```asm
include irvine32.inc
.code
main proc
	mov eax,0
	mov ecx,4
L1:
	imul eax,10
	add eax,1
	call WriteInt
	call crlf
	loop L1
exit
main endp
end main
```

# OUTPUT:
![image](https://github.com/user-attachments/assets/d8fb0c08-629d-47f7-8ff9-2b91c324ef94)
