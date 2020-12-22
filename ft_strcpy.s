;/* ************************************************************************** */
;/*                                                                            */
;/*                                                        :::      ::::::::   */
;/*   ft_strcpy.s                                        :+:      :+:    :+:   */
;/*                                                    +:+ +:+         +:+     */
;/*   By: taelee <taelee@student.42seoul.kr>         +#+  +:+       +#+        */
;/*                                                +#+#+#+#+#+   +#+           */
;/*   Created: 2020/12/22 22:03:27 by taelee            #+#    #+#             */
;/*   Updated: 2020/12/22 22:03:28 by taelee           ###   ########.fr       */
;/*                                                                            */
;/* ************************************************************************** */

;function in C
; char	*ft_strcpy(char *dest, char *src)
; {
; 	int i;

; 	i = 0;
; 	while (src[i] != 0)
; 	{
; 		dest[i] = src[i];
; 		i++;
; 	}
; 	dest[i] = '\0';
; 	return (dest);
; }

section	.text
	global	_ft_strcpy

_ft_strcpy:
	xor		rcx, rcx	
	xor		dl, dl			
	cmp		rsi, 0			
	jz		return
	jmp		copy
increment:
	inc		rcx
copy:
	mov		dl, BYTE [rsi + rcx]
	mov		BYTE [rdi + rcx], dl 
	cmp		dl, 0
	jnz		increment
return:
	mov		rax, rdi	
	ret
