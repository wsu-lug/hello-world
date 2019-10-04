org 0x7c00
jmp main


msg db 'HELLO WORLD',0


getchar:
	mov ah, 0x0
	int 16h
	ret
scanf:
	scan_loop:
		call getchar
		

		cmp al, 13
		je scan_end
		
		mov ah, 0xe
		int 10h	
		mov ah, 0	
		
		cmp al, 8
		je backspace
		inc dx

		stosb
		jmp scan_loop

	backspace:
		cmp dx, 0
		je scan_loop
		add dx, -1
		mov byte[di], 0
		add di, -1
		mov ah, 0xe
		mov al, 0
		int 10h
		mov al, 8
		int 10h
		mov ah, 0
		xor ax, ax
		jmp scan_loop
		

	scan_end:
		mov ah, 0xe
		call endl
		xor ax, ax
		stosb
	ret
putchar:
	
	mov ah, 0xe
	int 10h
	ret
endl:
	mov ah,0xe
	mov al, 10
	xor cx, cx
	int 10h
	endl_loop:
		cmp cx, dx
		je endl_loop_end
		mov al, 8
		int 10h
		inc cx
		jmp endl_loop
	endl_loop_end:
		mov ah, 0xe
		mov bl, 10
		mov cx, 01h
ret

printf:
	xor dx, dx
	print_loop:
		lodsb
		cmp al,0
		je end_print
		inc dx
		call putchar
		jmp print_loop
	end_print:
		call endl
	ret


main:
	
	xor ax, ax
	mov bx, ax
	mov cx, ax
	mov dx, ax
	
	
	
	mov ah, 0
	mov al, 13h
	int 10h
	
	mov ah, 0xb
	mov bh, 0
	mov bl, 4
	int 10h

	mov ah, 0xe
	mov al, 8
	mov bh, 0
	mov bl, 0xf
	mov cx, 01h
	int 10h
	
	

	mov si, msg
	mov di, msg
	call printf

	
		jmp $
times 510-($-$$) db 0
dw 0xaa55

