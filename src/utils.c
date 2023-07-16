#include <stdlib.h>

#include "libasm.h"

void	ft_list_remove_if(t_list **head, void *data_ref, int (*cmp)(), void (*free_fct)(void *))
{
	t_list	*curr;
	t_list	*prev;
	
	curr = *head;
	prev = NULL;
	while (curr)
	{
		if (!cmp(curr->data, data_ref))
		{
			if (prev)
			{
				prev->next = curr->next;
				free_fct(curr->data);
				free(curr);
			}
		}
		prev = curr;
		curr = curr->next;
	}

}
