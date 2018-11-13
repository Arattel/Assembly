section .text:
global _start

_start:

mov ebx, [index]
l1:
mov eax, [b + ebx*4]
mov ecx, [a + ebx*4]
mov edx, -1
neg eax
idiv ecx
mov [x + ebx * 4], edx
inc ebx
cmp ebx, [length]
jne l1
 


section .data:
a: dd 7, 8, 9
b: dd 18, 21, 35
x: dd 0, 0, 0
length dd 3
index dd 0

