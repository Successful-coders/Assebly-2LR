.386
.model flat
.stack 4096

;extern  lstrlenA@4: PROC	; функция определения длины строки
;EXTERN  CharToOemA@8: PROC
.data
flenght	dd 0
slenght	dd 0
string1 dd 0
string2 dd 0
.code

@FUNC@20 proc
	push ebp ;сохраняем ebp при вызове
	mov ebp, esp ;устанавливаем новое значение ebp

	

	;длина второй строки должна быть больше длины первой строки
	cmp edx, ecx
	jb error

	;длина строки должна быть больше нуля
	add flenght, ecx
	cmp flenght, 0
	jbe error

	; длина второй строки
	add slenght, edx
	cmp slenght, 0
	jbe error

	xor eax, eax
	mov eax, [ebp]+4
	add string1, eax

	xor ecx, ecx
	mov ecx, [ebp]+8
	add string2, ecx

	xor edx, edx
	mov edx, [ebp+16]

	error:
		pop ebp
		mov eax, 0
		ret 12
@FUNC@20 endp
end