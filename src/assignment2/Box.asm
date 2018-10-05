; Program: Box.asm
; Author: Joshua Stone
; Description: Prints a single message formatted with asterisks and spaces

; Build flags:
; ml.exe /c Box.asm
; link16.exe Box.obj, Box.exe, nul.map, .lib, nul.def 

        .MODEL  SMALL	
        .586

        .STACK  100h

        .DATA
BoxMessage DB	' ***** Assembly Programming ***** ', 13, 10,	; '13' means carriage return, '10' means go to the next line
		2 DUP('*', 32 DUP (' ') ,'*', 13, 10),		; two lines, each one containing two askerisks with 32 spaces betwee them
		'*    Assignment 2! I finished    *', 13, 10,
		2 DUP('*', 32 DUP (' ') ,'*', 13, 10),
		34 DUP('*'), 13, 10, '$'			; creates 34 asterisks
        .CODE
Main	PROC
	mov     ax, @DATA 		; Standard boilerplate for starting the "main" program
	mov     ds, ax
	mov	dx, OFFSET BoxMessage
	mov     ah, 9h			; sets syscall for printing a string
	int     21h			; performs syscall to print BoxMessage
	mov     al, 0			; sets exit code to 0 for success
	mov     ah, 4ch			; sets program to terminate with exit code
	int     21h			; performs syscall to end program
Main	ENDP

        END     Main
