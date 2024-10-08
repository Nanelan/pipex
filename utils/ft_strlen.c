/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: crmunoz- <crmunoz-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/28 12:03:25 by crmunoz-          #+#    #+#             */
/*   Updated: 2024/08/01 13:16:10 by crmunoz-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../pipex.h"

size_t	ft_strlen(char *s)
{
	size_t	count;
	char	*schar;

	count = 0;
	schar = (char *) s;
	while (schar[count] != '\0')
		count++;
	return (count);
}

char	*ft_strstr(char *str, char *to_find)
{
	int	i;
	int	j;

	i = 0;
	j = 0;
	if (to_find[i] == '\0')
		return (str);
	while (str[i] != '\0')
	{
		j = 0;
		if (str[i] == to_find[j])
			while (str[i + j] == to_find[j] && to_find[j] != '\0')
				j++;
		if (to_find[j] == '\0')
			return (str + i);
		i++;
	}
	return (0);
}
