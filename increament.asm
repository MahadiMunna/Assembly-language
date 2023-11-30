.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    
    mov bl,al
    inc bl
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    main endp
end main