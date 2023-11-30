.model small
.stack 100h

.data
    A db ?
    B db ?
    C db ?
.code
    main proc
        mov ah,1
        int 21h
        
        mov A,al
        int 21h
        
        mov B,al
        int 21h
        
        mov C,al

        
        mov bh,A
        add bh,B
        sub bh,48
        add bh,C
        sub bh,48
        
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,2
        mov dl,bh
        int 21h
        
        
        mov ah,4ch
        int 21h
    main endp
end main
        