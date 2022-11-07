/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_isprint.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: edelage <edelage@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/06 18:03:59 by edelage           #+#    #+#             */
/*   Updated: 2022/11/06 18:34:53 by edelage          ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */
#include "libft_test.h"

int	main(void)
{
	for (int i = -10; i < 256; i++)
	{
		if ((bool) ft_isprint(i) != (bool) isprint(i))
			return (1);
	}
	return (0);
}
