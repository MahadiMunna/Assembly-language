.model small
.stack 100h

.data
name1 db "Mahadi Hasan Munna$"
name2 db "Moniruzzaman Monir$"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea bx,name1
    lea cx,name2
    
    mov ah,9
    mov dx,bx
    int 21h
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov ah,9
    mov dx,cx
    int 21h
        
    main endp
end main
