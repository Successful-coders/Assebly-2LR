.686
.model flat, C
;.stack 4096

extern _val	:	dword;

.data

.code

_copy proc
	mov		_val, 4
	ret
_copy endp

END
