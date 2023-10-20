#include <stdio.h>

int main(void) {
    int a;
    asm("\t movl %%eax,%0" : "=r"(a));
    printf("%i\n", a);

    register int b asm("ebx");

    //asm("\t movl %%ebx,%0" : "=r"(i));+
    asm("\t movl %eax, %ebx");
    asm("\t movl %%eax,%0" : "=r"(a));

    printf("%i\n", a);
    //printf("%i\n", j);
    //printf("%i\n", k);
    printf("%i", b);

    return 0;
}