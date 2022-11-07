/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_isascii.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: edelage <edelage@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/06 18:03:59 by edelage           #+#    #+#             */
/*   Updated: 2022/11/06 18:34:32 by edelage          ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */
#include "libft_test.h"

int	main(void)
{
	for (int i = -150; i < 400; i++)
	{
		if ((bool) ft_isascii(i) != (bool) isascii(i))
			return (1);
	}
	return (0);
}
