.model small
.stack 100h
.code
main proc
    
    mov ah,1
    int 21h
    
    
    ;1 or 3
    cmp al,'1'
    je odd
    cmp al,'3'
    je odd
    
    
    ;2 or 4
    cmp al,'2'
    je even
    cmp al,'4'
    je even
    
    jmp exit
    
    odd:
    mov ah,2
    mov dl,'o'
    int 21h
    
    jmp exit
    
    even:
    mov ah,2
    mov dl,'e'
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
        
    main endp
end main