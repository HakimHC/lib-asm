#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>

#include "libasm.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*node = malloc(sizeof(t_list));
	if (!node)
		return NULL;
	node->data = content;
	node->next = NULL;
	return node;
}

int	main(void)
{
	printf("============ FT_STRLEN =================\n");
	printf("string: 'hola' | expected: %lu | got: %lu\n", strlen("hola"), ft_strlen("hola"));
	printf("string: '' | expected: %lu | got: %lu\n", strlen(""), ft_strlen(""));
	printf("========================================\n\n");
	printf("============ FT_STRCPY =================\n");
	char *src = "hello sir";
	char dest[40] = "";
	char o_dest[40] = "";
	char dest2[] = "yello world";
	char o_dest2[] = "yello world";
	printf("src: '%s' | dest: '%s' | ", src, dest);
	printf("expected: %s\n", strcpy(o_dest, src));
	printf("res: %s\n", ft_strcpy(dest, src));
	src = "h";
	printf("src: '%s' | dest: '%s' | ", src, dest2);
	printf("expected: %s\n", strcpy(o_dest2, src));
	printf("res: %s\n", ft_strcpy(dest2, src));
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
	printf("========================================\n\n");
	printf("============ FT_WRITE ==================\n");
	printf("%li\n", ft_write(3232, "keloke manin\n", ft_strlen("keloke manin\n")));
	printf("%d\n", errno);
	printf("%li\n", write(3232, "keloke manin\n", ft_strlen("keloke manin\n")));
	printf("%d\n", errno);
	char *ptr = ft_strdup("hola");
	printf("%s\n", ptr);
	free(ptr);
	ptr = ft_strdup("");
	printf("%s\n", ptr);
	free(ptr);
	t_list *head = ft_lstnew("1");
	char *p = ((char *)head + 8);
	void **pp = (void**)((char *)head + 8);
	printf("%p\n", &((t_list *)NULL)->next);
	printf("%p\n", *pp);
	printf("%p\n", p);
	t_list *n1 = ft_lstnew("2");
	/* t_list *n2 = ft_lstnew("3"); */
	head->next = n1;
	/* n1->next = n2; */

	printf("%d\n", ft_list_size(NULL));
}
