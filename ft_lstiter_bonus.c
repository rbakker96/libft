/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_lstiter_bonus.c                                 :+:    :+:            */
/*                                                     +:+                    */
/*   By: rbakker <marvin@codam.nl>                    +#+                     */
/*                                                   +#+                      */
/*   Created: 2019/11/07 14:38:22 by rbakker        #+#    #+#                */
/*   Updated: 2019/11/14 13:38:33 by rbakker       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void		ft_lstiter(t_list *lst, void (*f)(void *))
{
	if (lst)
	{
		while (lst != 0)
		{
			f(lst->content);
			lst = lst->next;
		}
	}
}
