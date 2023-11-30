.model small
.stack 100h
.data
.code
main proc
		xor cx, cx
		
		mov ah, 1
		int 21h
		
		compare:
		cmp al, 13
		je output
		inc cx
		push ax    
		int 21h
		jmp compare 
   
		output:	     
		mov ah, 2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
             
	    execute: 
		pop dx
		int 21h
		loop execute 
		
		mov ah, 2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
		    
		mov ah, 2
		mov dx, cx
		int 21h
	
    main endp
end main