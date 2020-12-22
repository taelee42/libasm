;/* ************************************************************************** */
;/*                                                                            */
;/*                                                        :::      ::::::::   */
;/*   main.c                                             :+:      :+:    :+:   */
;/*                                                    +:+ +:+         +:+     */
;/*   By: taelee <taelee@student.42seoul.kr>         +#+  +:+       +#+        */
;/*                                                +#+#+#+#+#+   +#+           */
;/*   Created: 2020/12/22 22:03:27 by taelee            #+#    #+#             */
;/*   Updated: 2020/12/22 22:03:28 by taelee           ###   ########.fr       */
;/*                                                                            */
;/* ************************************************************************** */

;function in C
; int	ft_strlen(char *str)
; {
; 	int len;

; 	len = 0;
; 	while (str[len])
; 		len++;
; 	return (len);
; }

section	.text
	global	_ft_strlen

_ft_strlen:
	xor		rax, rax
	jmp		compare
increment:
	inc		rax
compare:
	cmp		BYTE [rdi + rax], 0
	jne		increment
done:
	ret

