.model small
.stack 100h
.code
main proc
    
    mov ah,1   
    int 21h
    
    mov bl, al      ;bl=input value  
   
    cmp bl,'0'      ;input value comparison
    je printStar    ;if bl = 0 jump to printStar
    jmp printHash   ;else jump to printHash
    
    printStar: 
    mov ah,2
    mov dl,'*'
    int 21h 
    
    mov ah, 4ch     ;return to main endp, this is for ignore printHash
    int 21h 
    
    printHash:
    mov ah,2
    mov dl,'#'
    int 21h
    
    main endp
end main