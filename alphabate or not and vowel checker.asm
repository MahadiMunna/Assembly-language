.model small
.stack 100h
.data
msg1 db "Captal letter$"
msg2 db "Small letter$"
msg3 db "It is a vowel$"
msg4 db "It is not a vowel$"
msg5 db "Not an Alphabate$"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'a'
    jl capital
    
    cmp bl,'z'
    jg capital
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lea cx,msg2
    mov dx,cx
    mov ah,9
    int 21h
    
    jmp vowel
    
    capital:
    cmp bl,'A'
    jl else
    
    cmp bl,'Z'
    jg else
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lea cx,msg1
    mov dx,cx
    mov ah,9
    int 21h 
    
    vowel:
    cmp bl,'a' 
    je printVowel
    
    cmp bl,'e'
    je printVowel
    
    cmp bl,'i'
    je printVowel
    
    cmp bl,'o'
    je printVowel
    
    cmp bl,'u'
    je printVowel
    
    cmp bl,'A' 
    je printVowel
    
    cmp bl,'E'
    je printVowel
    
    cmp bl,'I'
    je printVowel
    
    cmp bl,'O'
    je printVowel
    
    cmp bl,'U'
    je printVowel
    
    jmp notVowel
    
    printVowel:
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
    jmp exit
    
    else:
     mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lea cx,msg5
    mov dx,cx
    mov ah,9
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main