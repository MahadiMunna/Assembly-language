.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    
    mov bl,al
    sub bl,48
    int 21h
    
    mov cl,al
    sub cl,48
    
    sub bl,cl
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    main endp
end main