.model small
.stack 100h 
.data
.code
main proc
    
     
    mov cx,26  
    
    mov ah,2
    mov bl,65
     
    repeat:
    mov dl,bl 
    int 21h    
    inc bl 
      
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop repeat
     
    mov ah,4ch
    int 21h
    
    main endp
end main