# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anmassy <anmassy@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/15 16:54:06 by anmassy           #+#    #+#              #
#    Updated: 2022/11/22 14:50:14 by anmassy          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= srcs/ft_print_other.c\
		srcs/ft_print_unsigned_nbr.c\
		srcs/ft_printf.c\
		srcs/ft_print_ptr.c\
		srcs/ft_print_hex.c\
		srcs/ft_print_nbr.c

INCLUDE	= includes/ft_printf.h

NAME	= libftprintf.a

OBJS	= $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

.c.o:
	gcc -Wall -Wextra -Werror -c $< -I includes -o $@

clean:
	/bin/rm -f $(OBJS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
