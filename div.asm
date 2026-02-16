.model small
.stack 100h
.data
n1 db 2
n2 db 4
n3 db 0

.code
start:

move ax,@data
mov ds,ax

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

