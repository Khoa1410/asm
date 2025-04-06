.data
    a dw ?        ; generate a rand no using the system time
RANDSTART:
   MOV AH, 00h  ; interrupts to get system time        
   INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

   mov  ax, dx
   xor  dx, dx
   mov  cx, 10    
   div  cx       ; here dx contains the remainder of the division - from 0 to 9

   add  dl, '0'
   mov  a, dx
   mov ah, 2h 
   mov dx, a
   int 21h    
RET    