.model small
.stack 100h
.data
msg1 db "captal letter$"
msg2 db "small letter$"
msg3 db "not a letter$"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'a'
    jl capital
    
    cmp bl,'z'
    jg capital
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lea cx,msg2
    mov dx,cx
    mov ah,9
    int 21h
    
    jmp exit
    
    capital:
    cmp bl,'A'
    jl else
    
    cmp bl,'Z'
    jg else
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lea cx,msg1
    mov dx,cx
    mov ah,9
    int 21h 
    
    jmp exit
    
    else:
     mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lea cx,msg3
    mov dx,cx
    mov ah,9
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main