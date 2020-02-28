# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rbakker <rbakker@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/29 08:44:29 by rbakker           #+#    #+#              #
#    Updated: 2020/02/07 11:18:23 by rbakker          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		libft.a

SOURCES	=	ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
			ft_memchr.c ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
			ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c \
			ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
			ft_isprint.c ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c \
			ft_substr.c ft_strjoin.c ft_strtrim.c ft_putchar_fd.c \
			ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_split.c \
			ft_itoa.c ft_strmapi.c
OBJECTS_S =	${SOURCES:%.c=%.o}

BONUS =		ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
			ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
			ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
OBJECTS_B =	${BONUS:%.c=%.o}

FLAGS =		-Wall -Wextra -Werror
COMPILE	=	gcc
LIB	=		ar rc

GREEN = \033[38;5;46m
WHITE = \033[38;5;15m
GREY = \033[38;5;8m
ORANGE= \033[38;5;202m
RED = \033[38;5;160m

all: $(NAME)

%.o: %.c
	@echo "$(GREY)Compiling...				$(WHITE)$<"
	@$(COMPILE) $(FLAGS) -c -o $@ $<

$(NAME): $(OBJECTS_S)
	@echo "$(ORANGE)Creating library..."
	@$(LIB) $(NAME) $(OBJECTS_S) $?
	@echo "$(GREEN)Succesful"

bonus: $(OBJECTS_S) $(OBJECTS_B)
	@echo "$(ORANGE)Creating library with bonus..."
	@$(LIB) $(NAME) $(OBJECTS_B) $?
	@echo "$(GREEN)Succesful"

clean:
	@echo "$(RED)DELETING OBJECTFILES"
	@/bin/rm -f $(OBJECTS_S)
	@/bin/rm -f $(OBJECTS_B)

fclean: clean
	@echo "$(RED)DELETING EXECUTABLE"
	@/bin/rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
