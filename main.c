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
	char src[] = "hello";
	char dest[50] = "";
	printf("%s\n", ft_strcpy(dest, src));
	/* dest[5] = 0; */
	/* printf("%s\n", dest); */
}
