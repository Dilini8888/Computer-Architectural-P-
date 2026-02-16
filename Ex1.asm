.model small
.stack 100h
.data
n1 db 2
n2 db 3
n3 db 0
msg1 db "Addition of num1 and num2:$"
msg2 db "Substraction of num2 and num1:$"
msg3 db "Multiplication of num1 and num2:$"
msg4 db "Division of num2 and num1:$"

.code
start:

move ax,@data
mov ds,ax

;addition
mov dx,offset msg1
mov ah,09h
int 21h

mov dl,10
mov ah,02h
int 21h

;substraction
mov dx,offset msg2
mov ah,09h
int 21h

mov dl,n2
sub dl,n1
add dl,48
mov ah,02h
int 21h

mov dl,10
mov ah,02h
int 21h

;multiplication
mov dx,offset msg3
mov ah,09h
int 21h

mov al,n1
mul n2
mov dl,al
add dl,48
mov ah,02h
int 21h

mov dl,10
mov ah,02h
int 21h

;division
mov dx,offset msg4
mov ah,09h
int 21h

mov ah,00
mov al,n2
div n1
mov n3,ah

mov dl,al
add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h
end start

