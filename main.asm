.386
.model flat
.stack 4096

;extern  lstrlenA@4: PROC	; ������� ����������� ����� ������

.data
flenght	dd 0
slenght	dd 0
string dd 0
strin2 dd 0
.code

@FUNC@20 proc
	push ebp ;��������� ebp ��� ������
	mov ebp, esp ;������������� ����� �������� ebp

	add string, ecx

	;����� ������ ������ ���� ������ ����
	add flenght, edx
	cmp flenght, 0
	jbe error

	xor eax, eax
	mov eax, [ebp]+8

	xor edx, edx
	mov edx, [ebp]+16
	cmp slenght, 0
	jbe error
	error:
		pop ebp
		mov eax, 0
		ret 12
@FUNC@20 endp
end