.model small
.stack 100h
.data
  msg1 db "take two input $"
  msg2 db "biggest value is: $"
.code
main proc

mov ax,@data
mov ds,ax

mov ah,9
lea dx,msg1
int 21h 
 
mov ah,1
int 21h 
mov bx,ax
int 21h

mov cx,ax 

mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h


cmp bx,cx   ; comparrison between two input
jg level1

jmp level2 

level1:
mov ah,9
lea dx,msg2
int 21h

mov ah,2
mov dx,bx
int 21h

jmp exit
 
level2:
mov ah,9
lea dx,msg2
int 21h

mov ah,2
mov dx,cx
int 21h

 
exit:
mov ah,4ch
int 21h


    main endp
end main