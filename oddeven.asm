.model small
.stack 100h
.data
msg db "Enter a number: $"
msg1 db "The number is even.$"
msg2 db "The number is odd.$"

d db 0
.code
start:
mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,09h
int 21h

mov ah,01h
int 21h
sub al,48
mov d,al


mov ah,00
mov al,d
mov bl,2
div bl

cmp ah,0

mov dl,10
mov ah,02h
int 21h

je isEven
jne isOdd

	isEven:
	mov dx,offset msg1
	mov ah,09h
	int 21h
	jmp Endnn

	isOdd:
	mov dx,offset msg2
	mov ah,09h
	int 21h
Endnn:
mov ax,4c00h
int 21h

end start
