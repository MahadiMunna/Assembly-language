.model small
.stack 100h
.data
    msg1 db "Your name: $"
    msg2 db "Your ID: $"
.code
main proc
    mov ax,@data   
    mov ds,ax
    
    lea bx,msg1
    
    mov ah,9         
    mov dx,bx
    int 21h
    
    mov ah,10
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea cx,msg2         
    mov dx,cx
    int 21h
    
    mov ah,10
    int 21h
     
    mov ah,4ch
    int 21h
    
    main endp
end main
    