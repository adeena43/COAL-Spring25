INCLUDE Irvine32.inc

.data
	arrayB BYTE 60, 70, 80
	arrayW WORD 150, 250, 350
	arrayD DWORD 600, 1200, 1800
.code
main PROC
	mov esi, 0
	mov al, arrayB[esi * TYPE arrayB]
	mov bx, arrayW[esi * TYPE arrayW]
	mov ecx, arrayD[esi * TYPE arrayD]
	add esi, 2
	add al, arrayB[esi * TYPE arrayB]
	add bx, arrayW[esi * TYPE arrayW]
	add ecx, arrayD[esi * TYPE arrayD]
	call DumpRegs
	exit
main ENDP
END main
