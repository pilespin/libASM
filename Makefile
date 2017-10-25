# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pilespin <pilespin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/23 14:06:14 by pilespin          #+#    #+#              #
#    Updated: 2017/10/25 19:12:42 by pilespin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: clean fclean all

NAME = libfts.a
TITLE = libftASM

SDIR = src/
ODIR = object/

SRCA = ft_bzero.s \
	  ft_isalnum.s \
	  ft_isalpha.s \
	  ft_isascii.s \
	  ft_isdigit.s \
	  ft_tolower.s \
	  ft_toupper.s \
	  ft_isprint.s \
	  ft_strlen.s \
	  ft_strcat.s \
	  ft_puts.s \
	  ft_putstr.s \
	  ft_putstr_fd.s \
	  ft_memset.s \
	  ft_memcpy.s \
	  ft_strdup.s \
	  ft_cat.s \
	  ft_strclr.s \
	  ft_streq.s \
	  ft_strnew.s \
	  ft_strjoin.s \

LIBASM = -L ./ -lfts
NASM =  ~/.brew/bin/nasm -f macho64

SRC = $(patsubst %.s, $(SDIR)%.s, $(SRCA))
OBJ = $(patsubst %.s, $(ODIR)%.o, $(SRCA))

all: $(NAME)

$(NAME): $(OBJ) $(SRC)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "\033[37m END $(NAME)\033[0m"

$(ODIR)%.o: $(SDIR)%.s
	@mkdir -p $(ODIR)
	@$(NASM) $< -o $@
	@echo "\033[32m ok \033[33m $@\033[0m"

clean:
	@rm -f $(OBJ)
	@rm -rf $(ODIR)

fclean: clean
	@rm -f $(NAME)

re: fclean all
