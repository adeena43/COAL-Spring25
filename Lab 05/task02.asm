INCLUDE Irvine32.inc

.code
main PROC
	mov al, 'A'
	mov bl, 'D'
	mov cl, 'I'
		call DumpRegs
		exit
main ENDP
END main
