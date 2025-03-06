
INCLUDE Irvine32.inc

.data
	array1 DWORD 10, 20, 30, 40, 50
	var SDWORD ?
.code
main PROC
	mov esi, OFFSET array1
	mov eax, [esi + 16]
	sub eax, [esi + 12]
	sub eax, [esi + 8]
	sub eax, [esi + 4]
	sub eax, [esi]
	mov var, eax
	call WriteInt
	call crlf
	exit
main ENDP
END main
