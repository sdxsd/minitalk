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

$(NAME): $(S_NAME)

re: clean $(NAME)

clean:
	@rm -fv client
	@rm -fv server

$(S_NAME):
	$(CC) $(CFLAGS) $(SERVER_FILES) -o $(S_NAME)
