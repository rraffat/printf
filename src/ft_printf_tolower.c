/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_tolower.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rraffat <rraffat@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/17 20:00:25 by rraffat           #+#    #+#             */
/*   Updated: 2022/01/25 10:53:02 by rraffat          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

char	*ft_str_tolower(char *str)
{
	int	i;

	i = -1;
	while (str[++i])
		str[i] = ft_tolower(str[i]);
	return (str);
}
