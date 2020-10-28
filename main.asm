.386
.model flat
;.stack 4096

.data
flenght	dd 0
slenght	dd 0
help dd 0
string1 dd 0
string2 dd 0
pos dd 0
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
	add help, edx

	;add string1, [ebp]+4 строка приемник, откуда берем символы
 
	;add string2, [ebp]+8 сттрока в которой ищем

	;[ebp+16] - pos 
	
	mov esi, [ebp]+12;вторая строка
	mov edi, [ebp]+8;первая строка
	xor eax, eax
	xor esp, esp
FindSymbol:
;работает
	mov al,[edi]
	mov cl, [esi]
	cmp al, cl
	je found
	inc esi
	dec slenght
	cmp slenght, 0
	ja FindSymbol
	
	inc edi
	mov esi, [ebp]+12
	add slenght, edx
	add esp ,1
	dec flenght
	cmp flenght, 0
	ja FindSymbol
;добавить выход когда ничего не нашли
	pop ebp
	mov eax,1
	ret 20
;добавить когда нашли
found:
	ret 1

	error:
		pop ebp
		mov eax, 0
		ret 12
@FUNC@20 endp
end