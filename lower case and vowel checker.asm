;include 'emu8086.inc'
.model small
.stack 100h
.data
msg1 db "The lower case letter is : $"
msg2 db "It is not lower case letter$"
msg3 db "It is a vowel$"
msg4 db "It is not a vowel$"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'a'
    jl level1
    cmp bl,'z'
    jg level1
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea cx,msg1
    mov dx,cx
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    cmp bl,'a' 
    je vowel
    
    cmp bl,'e'
    je vowel
    
    cmp bl,'i'
    je vowel
    
    cmp bl,'o'
    je vowel
    
    cmp bl,'u'
    je vowel
    
    jmp notVowel
        
    level1:
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
    
    vowel:
     mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lea cx,msg3
    mov dx,cx
    mov ah,9
    int 21h 
    jmp exit
    
    
    notVowel:
     mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lea cx,msg4
    mov dx,cx
    mov ah,9
    int 21h
    
    exit:
    mov ah,4
    int 21h
        
        
    main endp
end main