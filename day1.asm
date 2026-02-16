.model small
.stack 100h
.data
msg1 db "Hello $"
n1 db 2

.code
start:

move ax,@data
mov ds,ax

;to print msg1
mov dx,offset msg1
mov ah,09h
int 21h

;to break the line
mov dl,10
mov ah,02h
int 21h
  
;to print n1
mov dl,n1
add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h
end start

