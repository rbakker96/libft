<p align="center">
  <img src="https://github.com/rbakker96/images/blob/master/codam_logo.png">
</p>

# Libft 
***The aim of this project is to code a C library regrouping usual functions that can be used in all your other projects***

---

### Project summary
> 1th ring Codam project

This project intended to re-codes a set of the libc functions, as defined in their man. The functions will need to present the same prototype and behaviors as the originals. The functions’ names must be prefixed by “ft_”. For instance strlen becomes ft_strlen. As a bonus linked list functions are added to the library.

---

### Technical considerations
> The project needs to comply with the following rules/functionalities.

- It is forbidden to use global variables.
- If you need subfunctions to write a complex function, you should define these subfunctions as static to avoid publishing them with your library. It would be a good habit to do this in your future projects as well.
- Submit all files in the root of your repository.
- You must use the command ar to create your librairy, using the command libtool is forbidden.

---

### Usage
> Create a main to use the library functions, for example

```javascript
// main.c

#include "libft.h"
#include "stdio.h"

int	main(void)
{
	int length;

	length = ft_strlen("Dit is een test string");
	printf("Length = %d\n", length);

	return (0);
}
```
> Run the following commands in the terminal

```shell
$ git clone https://github.com/rbakker96/libft.git
$ cd <folder name>
$ make
$ gcc -Wall -Wextra -Werror main.c libft.a
$ ./a.out
```

---

### Used resources
> Most noteworthy resources used during this project

- Man pages of recreated functions
