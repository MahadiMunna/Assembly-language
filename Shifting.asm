.model small
.stack 100h
.data
.code

main proc
            
   mov cx,8
   mov dh,'0'
   
   mov ah, 1
   int 21h
   mov bl,al
   
   level1:
   shl bl,1
   jnc  zero
       
   one:
   mov dl, '1'
   inc dh                  
   jmp printDL:
        
   zero:
   mov dl, '0'
   jmp printDL
   
   
   printDL:          
   mov ah,2
   int 21h
   loop level1
   

   mov dl,10
   int 21h
   mov dl,13
   int 21h
   mov dl,dh
   int 21h
	
   main endp
end main