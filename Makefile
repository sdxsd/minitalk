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

$(NAME): libft $(S_NAME) $(C_NAME)

re: clean $(NAME)

libft:
	@echo "COMPILING LIBFT"
	@make -C libft/

fclean: clean
	@make -C libft/ fclean

clean:
	@rm -fv client
	@rm -fv server

$(C_NAME)
	$(CC) $(CFLAGS) $(CLIENT_FILES) libft/libft.a -o $(C_NAME)

$(S_NAME):
	$(CC) $(CFLAGS) $(SERVER_FILES) libft/libft.a -o $(S_NAME)

.PHONY: all re libft fclean clean
