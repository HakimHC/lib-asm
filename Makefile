NAME = libasm.a

TEST = test

AS = nasm

ASFLAGS = -f elf64 -F dwarf -g

CC = gcc

CFLAGS = -Wall -Werror -Wextra -no-pie

ARFLAGS = -rcs

LDFLAGS = -L. -lasm

ASRC = ft_strlen.s \
       ft_strcpy.s \
       ft_strcmp.s \
       ft_write.s \
       ft_read.s \
       ft_strdup.s \
       ft_list_size.s \
       ft_list_push_front.s

CSRC = main.c

AOBJ = $(ASRC:.s=.o)

COBJ = $(CSRC:.c=.o)

all: $(NAME) $(TEST)

$(NAME): $(AOBJ)
	$(AR) $(ARFLAGS) $(NAME) $(AOBJ)

$(TEST): $(NAME) $(COBJ)
	$(CC) $(CFLAGS) $(COBJ) $(LDFLAGS) -o $(TEST)

clean:
	$(RM) $(AOBJ) $(COBJ)
	$(RM) $(TEST)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
