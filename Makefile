# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pamone <pamone@student.42abudhabi.ae>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/16 18:46:32 by pamone            #+#    #+#              #
#    Updated: 2023/12/16 18:46:32 by pamone           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	push_swap
FLAGS	=	-Wall -Wextra -Werror -I.
CC		= 	cc
SRC		=	operation_a.c operations_helper.c push_swap.c push_swap_utils.c \
			b_operation.c operations_helper_one.c parse_args.c split_operation.c \
			sorting_algorithms.c list_operation.c sort.c ft_str_join.c \
			ft_radix.c instructions_radix.c ft_helper_functions.c main.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(FLAGS) -o $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ) $(NAME)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
