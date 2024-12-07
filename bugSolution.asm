mov ecx, ebx
add ecx, esi
imul ecx, 4
add ecx, 0x10

; Check for overflow
cmp ecx, 0xFFFFFFFF ; Adjust for architecture specific max address
jg overflow_handler

mov eax, [ecx]
jmp end

overflow_handler:
; Handle the overflow appropriately - e.g., log error, return error code
; ...error handling logic...
jmp end
end: