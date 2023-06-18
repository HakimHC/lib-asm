NAME = libasm.a

TEST = test

AS = nasm

ASFLAGS = -f elf64 -F dwarf -g

CC = gcc

CFLAGS = -Wall -Werror -Wextra

AR = ar

ARFLAGS = -rcs

ASRC = ft_strlen.s \

CSRC = main.c

AOBJ = $(ASRC:.s=.o)

COBJ = $(CSRC:.s=.o)

all: $(NAME) $(TEST)

$(NAME): $(AOBJ)
	$(AR) $(ARFLAGS) $(NAME) $(AOBJ)

$(TEST): $(AOBJ) $(COBJ)
	$(CC) $(CFLAGS) $(AOBJ) $(COBJ) -o $(TEST)

clean:
	rm -f $(AOBJ) $(COBJ)
	rm -f $(TEST)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
