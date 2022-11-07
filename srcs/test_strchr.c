/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_strchr.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: edelage <edelage@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/07 00:20:40 by edelage           #+#    #+#             */
/*   Updated: 2022/11/07 00:38:34 by edelage          ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */
#include "libft_test.h"

int	main(int argc, char **argv)
{
	char	*str = "tes";
	int	choice;

	if (argrc != 2)
	{
		printf("Error\n");
		return (1);
	}
	choice == atoi(argv[1]);
	if (choice == 0)
		if (ft_strchr(str, 't', 0) != strchr(str, 't', 0))
			return (1);
	else if (choice == 2)
		if (ft_strchr(str, 'e', 1) != strchr(str, 'e', 1))
			return (1);
	else if (choice == 2)
		if (ft_strchr(str, 's', 3) != strchr(str, 's', 3))
			return (1);
	else if (choice == 2)
		if (ft_strchr(str, 't', 0) != strchr(str, 't', 0))
			return (1);
	return (0);
}
