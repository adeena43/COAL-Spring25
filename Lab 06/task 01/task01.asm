INCLUDE Irvine32.inc
.data
	val1 BYTE 61, 43, 11, 52, 25
.code
main PROC
	movzx eax, [val1+2]
	call WriteInt
	movzx eax, [val1+4]
	call WriteInt
	movzx eax, [val1+1]
	call WriteInt
	movzx eax, [val1+3]
	call WriteInt
	movzx eax, [val1]
	call WriteInt
		exit
main ENDP
END main
