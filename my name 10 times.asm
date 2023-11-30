.model small
.stack 100h 
.data
name1 db "Mahadi Hasan Munna$"
.code
main proc
    
     
    mov cx,10  
    
    mov ax,@data
    mov ds,ax
    
    
     
    repeat:
    lea bx,name1
    mov ah,9
    mov dx,bx
    int 21h
    
    mov ah,2  
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop repeat
     
    mov ah,4ch
    int 21h
    
    main endp
end main