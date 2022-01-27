# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rraffat <rraffat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/12 19:24:03 by rraffat           #+#    #+#              #
#    Updated: 2022/01/24 16:51:03 by rraffat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

LIBFT = ./libft/libft.a

N_TEMP = temp.a

SRCS =	src/ft_info.c\
	src/ft_printf_base.c\
	src/ft_printf_char.c\
	src/ft_printf_flags.c\
	src/ft_printf_hexa.c\
	src/ft_printf_int.c\
	src/ft_printf_itoa.c\
	src/ft_printf_percent.c\
	src/ft_printf_pointer.c\
	src/ft_printf_string.c\
	src/ft_printf_tolower.c\
	src/ft_printf_unit.c\
	ft_printf.c\
	src/ft_printf_width.c\
	src/ft_putchar.c\
	src/ft_putstr.c

SURPL_O = 	ft_info.o\
			ft_printf_base.o\
			ft_printf_char.o\
			ft_printf_flags.o\
			ft_printf_hexa.o\
			ft_printf_int.o\
			ft_printf_itoa.o\
			ft_printf_percent.o\
			ft_printf_pointer.o\
			ft_printf_string.o\
			ft_printf_tolower.o\
			ft_printf_unit.o\
			ft_printf.o\
			ft_printf_width.o\
			ft_putchar.o\
			ft_putstr.o

CC = gcc

FLAGS = -c -Wall -Wextra -Werror

INCLUDES = -I./includes

OBJS = $(SRCS:.c=.o)

$(NAME): $(OBJS)
	$(MAKE) bonus -C ./libft
	cp libft/libft.a $(NAME)
	$(CC) $(FLAGS) $(INCLUDES) $(SRCS)
	ar -rcs $(NAME) $(OBJS)

all : $(NAME)

clean :
	$(MAKE) clean -C ./libft
	rm -rf $(SURPL_O) 
	rm -rf $(OBJS)

fclean : clean
	$(MAKE) fclean -C ./libft
	rm -rf $(NAME)

re : fclean all
