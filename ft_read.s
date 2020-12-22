;/* ************************************************************************** */
;/*                                                                            */
;/*                                                        :::      ::::::::   */
;/*   ft_read.s                                          :+:      :+:    :+:   */
;/*                                                    +:+ +:+         +:+     */
;/*   By: taelee <taelee@student.42seoul.kr>         +#+  +:+       +#+        */
;/*                                                +#+#+#+#+#+   +#+           */
;/*   Created: 2020/12/22 22:03:27 by taelee            #+#    #+#             */
;/*   Updated: 2020/12/22 22:03:28 by taelee           ###   ########.fr       */
;/*                                                                            */
;/* ************************************************************************** */

section .text
	global _ft_read
	extern ___error

_ft_read:
	mov 	rax, 0x2000003
	syscall
	jc 		_err
	ret

_err:
	push 	rax
	call 	___error
	pop 	rdx
	mov 	[rax], rdx
	mov 	rax, -1
	ret
