.model small
.stack 100h

.data
name1 db "Mahadi Hasan Munna$"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea bx,name1
    mov ah,9
    mov dx,bx
    int 21h
    
    main endp
end main