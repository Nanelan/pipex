# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: crmunoz- <crmunoz-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/30 20:03:46 by crmunoz-          #+#    #+#              #
#    Updated: 2024/08/08 20:16:48 by crmunoz-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME	:= pipex
CC		:= gcc
FLAGS	:= -Wall -Wextra -Werror \

SRCS	:=	pipex.c prequel_pipex.c \
			utils/ft_strlen.c utils/ft_strdup.c utils/ft_split.c utils/ft_strlcat.c utils/ft_strjoin.c utils/ft_strnstr.c utils/ft_substr.c \

OBJS	:= $(SRCS:.c=.o)

.c.o:
	${CC} ${FLAGS} -c $< -o ${<:.c=.o}

CLR_RMV		:= \033[0m
RED			:= \033[1;31m
GREEN		:= \033[1;32m
YELLOW		:= \033[1;33m
BLUE		:= \033[1;34m
CYAN 		:= \033[1;36m
RM			:= rm -f

${NAME}:	${OBJS}
			@echo "$(GREEN)Compilation ${CLR_RMV}of ${YELLOW}$(NAME) ${CLR_RMV}..."
			${CC} ${FLAGS} -o ${NAME} ${OBJS}
			@echo "$(GREEN)$(NAME) created[0m ✔️"

all:		${NAME}

bonus:		all

clean:
			@ ${RM} *.o */*.o */*/*.o
			@ echo "$(RED)Deleting $(CYAN)$(NAME) $(CLR_RMV)objs ✔️"

fclean:		clean
			@ ${RM} ${NAME}
			@ echo "$(RED)Deleting $(CYAN)$(NAME) $(CLR_RMV)binary ✔️"

re:			fclean all
PHONY:		all clean fclean re