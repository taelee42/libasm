;/* ************************************************************************** */
;/*                                                                            */
;/*                                                        :::      ::::::::   */
;/*   ft_strcmp.s                                        :+:      :+:    :+:   */
;/*                                                    +:+ +:+         +:+     */
;/*   By: taelee <taelee@student.42seoul.kr>         +#+  +:+       +#+        */
;/*                                                +#+#+#+#+#+   +#+           */
;/*   Created: 2020/12/22 22:03:27 by taelee            #+#    #+#             */
;/*   Updated: 2020/12/22 22:03:28 by taelee           ###   ########.fr       */
;/*                                                                            */
;/* ************************************************************************** */

; function in C
; int	ft_strcmp(char *s1, char *s2)
; {
; 	int i;

; 	i = 0;
; 	while (1)
; 	{
; 		if (s1[i] != s2[i] || s1[i] == 0 || s2[i] == 0)
; 		{
; 			return (s1[i] - s2[i]);
; 			break ;
; 		}
; 		else
; 			i++;
; 	}
; }

section .text
	global _ft_strcmp

_ft_strcmp:
	mov		rax, 0 
	mov		rbx, 0 
	mov		rcx, 0 
	jmp		compare 

compare:
	mov		al, byte [rdi + rcx] 
	mov		bl, byte [rsi + rcx] 
	cmp		al, bl
	jne		different 
	je		same 

different:
	sub		rax, rbx 
	ret 

same:
	cmp		al, 0 
	je		exit 
	inc		rcx 
	jmp		compare 

exit:
	mov		rax, 0 
	ret 



