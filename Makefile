NAME = libasm.a

TEST = test

AS = nasm

ASFLAGS = -f elf64 -F dwarf -g

CC = gcc

CFLAGS = -Wall -Werror -Wextra -no-pie

CFLAGS += -I./include

ARFLAGS = -rcs

LDFLAGS = -L. -lasm

ASRC = src/ft_strlen.s \
       src/ft_strcpy.s \
       src/ft_strcmp.s \
       src/ft_write.s \
       src/ft_read.s \
       src/ft_strdup.s \
       src/ft_list_size.s \
       src/ft_list_push_front.s

CSRC = src/main.c

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
