;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_abs.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: mfebvay <mfebvay@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/27 16:15:01 by mfebvay           #+#    #+#              ;
;    Updated: 2015/04/27 16:16:56 by mfebvay          ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_abs

_ft_abs:
	mov rax, rdi
	cmp rax, 0
	jae end
	neg rax

end:
	ret