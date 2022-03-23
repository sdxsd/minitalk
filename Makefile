CC = clang
CFLAGS = -Wall -Wextra -Werror
NAME = minitalk
S_NAME = server
C_NAME = client
CLIENT_FILES = \
			src/client.c
SERVER_FILES = \
			src/server.c

all: $(NAME)

$(NAME): printf $(S_NAME)

re: clean $(NAME)

printf:
	@echo "COMPILING FT_PRINTF"
	@make -C ft_printf/

fclean: clean
	@make -C ft_printf/ fclean
	@make -C ft_printf/libft/ fclean

clean:
	@rm -fv client
	@rm -fv server

$(S_NAME):
	$(CC) $(CFLAGS) $(SERVER_FILES) -o $(S_NAME)

.PHONY: all re printf fclean clean
