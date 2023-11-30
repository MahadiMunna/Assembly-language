.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h   

    mov cl,al
    mov bl,cl
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    event:
    mov dl,'*'
    int 21h
    
    cmp bl,'1'
    je exit
    
    cmp cl,'1'
    je outerLoop        
    
    jmp innerLoop
    
    outerLoop:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h    
    
    mov cl,bl
    dec bl
    
    innerLoop:
    loop event
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    