.model small
.stack 100h
.data
    msg1 db "Enter 2 input number: $"
.code
main proc
    
    mov ax,@data   
    mov ds,ax
    
    lea bx,msg1
    
    mov ah,9         
    mov dx,bx
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov cl,al
    
    cmp bl,cl
    jg level1
    
    jmp level2
    
    level1:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov dl,bl
    int 21h
    
    
    jmp event
    
    level2: 
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    mov dl,cl
    int 21h
    
    event:
    cmp bl,cl
    jg sub1
    
    cmp bl,cl
    jl sub2
    
    sub1:
    sub bl,cl
    cmp bl,'1'
    je exit
    
    jmp event
    
    sub2:
    sub cl,bl
    cmp cl,'1'
    je exit
    
    jmp event
    
    
    exit:
    mov ah,4ch
    int 21h
        
    main endp
end main