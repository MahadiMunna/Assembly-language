include 'emu8086.inc'
.model small
.stack 100h
.data


.code
main proc
    
    print "Enter two input:"
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
    print "Greater value : "

    mov ah,2
    mov dl,bl
    int 21h
    
    jmp exit
    
    level2:
    print "Greater value : "

    mov ah,2
    mov dl,cl
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
        
    main endp
end main