.model small
.stack 100h
.data

.code
main proc
    mov cx,10
    
    mov ah,2
    mov bl,'*'
    
    event:
    mov dl,bl
    int 21h
    cmp cx,7h
    je space
    
    cmp cx,4h
    je space
    
    cmp cx,2h
    je space
    
    cmp cx,1h
    je exit
    
    jmp iteration
    
    space:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    iteration:
    loop event
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    