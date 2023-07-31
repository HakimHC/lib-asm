## LIB-ASM: A static library containing a few libc functions, recoded in x86_64 ASM with Intel syntax

### Functions:
#### String manipulation
* ft_strlen (man 3 strlen): Returns the size of a string.
* ft_strcpy (man 3 strcpy): Copies the content of a string ```src``` into a string ```dest```.
* ft_strcmp (man 3 strcmp): Compares two strings.
* ft_strdup (man 3 strdup): Returns a duplicate of a string, using dynamic allocation.

#### System calls
* ft_write (man 2 write): Writes to a file descriptor.
* ft_read (man 2 read): Reads from a file descriptor.

These functions will be compiled to a static library called ```libasm.a```.
Unit tests of these functions are provided aswell in this repository.

For more information, take a look at the Makefile.
(>^.^)>
