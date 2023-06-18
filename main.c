#include <string.h>
#include <stdio.h>

#include "libasm.h"

int	main(void)
{
	printf("============ FT_STRLEN =================\n");
	printf("string: 'hola' | expected: %lu | got: %lu\n", strlen("hola"), ft_strlen("hola"));
	printf("string: '' | expected: %lu | got: %lu\n", strlen(""), ft_strlen(""));
	printf("========================================\n\n");
	printf("============ FT_STRCPY =================\n");
	char src[] = "hello sir";
	char dest[40] = "";
	char o_dest[40] = "";
	printf("src: '%s' | dest: '%s' | ", src, dest);
	printf("expected: %s\n", strcpy(o_dest, src));
	printf("res: %s\n", ft_strcpy(dest, src));
	printf("========================================\n\n");
	printf("============ FT_STRCMP =================\n");
	char *s1 = "hola";
	char *s2 = "quetal";
	printf("s1: '%s' | s2: '%s' | expected: %d | got: %d\n", s1, s2, strcmp(s1, s2), ft_strcmp(s1, s2));
	s1 = "";
	s2 = "jojo";
	printf("s1: '%s' | s2: '%s' | expected: %d | got: %d\n", s1, s2, strcmp(s1, s2), ft_strcmp(s1, s2));
	s1 = "yooh";
	s2 = s1;
	printf("s1: '%s' | s2: '%s' | expected: %d | got: %d\n", s1, s2, strcmp(s1, s2), ft_strcmp(s1, s2));
}
