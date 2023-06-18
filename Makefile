NAME = libasm.a

TEST = test

AS = nasm

ASFLAGS = -f elf64 -F dwarf -g

CC = gcc

CFLAGS = -Wall -Werror -Wextra

AR = ar

ARFLAGS = -rcs

LDFLAGS = -L. -lasm

ASRC = ft_strlen.s \
       ft_strcpy.s

CSRC = main.c

AOBJ = $(ASRC:.s=.o)

COBJ = $(CSRC:.c=.o)

all: $(NAME) $(TEST)

$(NAME): $(AOBJ)
	$(AR) $(ARFLAGS) $(NAME) $(AOBJ)

$(TEST): $(NAME) $(COBJ)
	$(CC) $(CFLAGS) $(COBJ) $(LDFLAGS) -o $(TEST)

clean:
	rm -f $(AOBJ) $(COBJ)
	rm -f $(TEST)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
