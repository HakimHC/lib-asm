#ifndef __LIBASM_H__
# define __LIBASM_H__

# include <sys/types.h>

extern size_t	ft_strlen(char *s);
extern char*	ft_strcpy(char *dest, const char *src);
extern int	ft_strcmp(const char *s1, const char *s2);
extern ssize_t	ft_write(int fd, const void *buf, size_t count);
extern ssize_t	ft_read(int fd, const void *buf, size_t count);
extern char	*ft_strdup(const char *s);

#endif
