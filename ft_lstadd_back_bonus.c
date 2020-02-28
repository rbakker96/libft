/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_lstadd_back_bonus.c                             :+:    :+:            */
/*                                                     +:+                    */
/*   By: rbakker <marvin@codam.nl>                    +#+                     */
/*                                                   +#+                      */
/*   Created: 2019/11/07 09:12:35 by rbakker        #+#    #+#                */
/*   Updated: 2019/11/14 18:11:51 by rbakker       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstadd_back(t_list **alst, t_list *new)
{
	if (!(alst))
		return ;
	if (*alst)
	{
		while ((*alst)->next != 0)
			*alst = (*alst)->next;
		(*alst)->next = new;
	}
	else
		ft_lstadd_front(alst, new);
}
