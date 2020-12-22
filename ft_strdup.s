;/* ************************************************************************** */
;/*                                                                            */
;/*                                                        :::      ::::::::   */
;/*   ft_strdup.s                                        :+:      :+:    :+:   */
;/*                                                    +:+ +:+         +:+     */
;/*   By: taelee <taelee@student.42seoul.kr>         +#+  +:+       +#+        */
;/*                                                +#+#+#+#+#+   +#+           */
;/*   Created: 2020/12/22 22:03:27 by taelee            #+#    #+#             */
;/*   Updated: 2020/12/22 22:03:28 by taelee           ###   ########.fr       */
;/*                                                                            */
;/* ************************************************************************** */

;function in C
; char	*ft_strdup(char *src)
; {
; 	int		i;
; 	char	*dest;

; 	i = 0;
; 	while (src[i])
; 		i++;
; 	if (!(dest = (char *)malloc(sizeof(char) * (i + 1))))
; 		return (0);
; 	i = 0;
; 	while (src[i])
; 	{
; 		dest[i] = src[i];
; 		i++;
; 	}
; 	dest[i] = 0;
; 	return (dest);
; }

section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	call	_ft_strlen
	inc		rax				
	push	rdi
	mov		rdi, rax
	call	_malloc
	pop		rbx				
	mov		rsi, rbx
	mov		rdi, rax
	call	_ft_strcpy
	ret 
