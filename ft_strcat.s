;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/27 20:57:34 by mfebvay           #+#    #+#              ;
;    Updated: 2015/03/27 22:32:31 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_strcat

_ft_strcat:
mov	rax, rdi

start:
	cmp [rdi], byte 0
	jz next
	inc rdi
	jmp start

next:
	cmp [rsi], byte 0
	je end
	mov r11, [rsi]
	mov [rdi], r11
	inc rdi
	inc rsi
	jmp next

end:
	mov [rdi], byte 0
	ret

