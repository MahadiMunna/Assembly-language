.model small
.stack 100h

.data
    msg db "Enter a number: $"

.code
main proc
    mov ax,@data    ;take data segment in code segment
    mov ds,ax
    
    lea bx,msg
    
    mov ah,9         ;use for print string
    mov dx,bx
    int 21h
    
    mov ah,1         ;use for user input
    int 21h
    mov bh,al
    
    mov ah,2          ;use for print output
    mov dl,0ah        ;use for newline
    int 21h
    mov dl,0dh        ;use for carries return
    int 21h
    

    mov dl,bh
    int 21h
        
    main endp
end main