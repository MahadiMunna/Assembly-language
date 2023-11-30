.model small
.stack 100h
.data
    
    
.code
main proc
    
    mov ah,1
    int 21h
    
    mov bl,al  ;data store in al
    sub bl,48   
    int 21h
    
    mov bh,al
    sub bh,48
    int 21h
    
    mov cl,al
    sub cl,48
    
    add bl,bh
    add bl,cl
    add bl,48

    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov dl,bl
    int 21h  
   

    
    main endp
end main
