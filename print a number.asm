.model small
.stack 100h

.code
main proc
    mov dx,"6"

    mov ah,2
    int 21h
    
    main endp
end main 