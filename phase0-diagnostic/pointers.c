#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void bump(int *p, int n) {
    for (int i = 0; i < n; i++)
        *(p + i) += i;
}

char *copy_upper(const char *s) {
    char *out = malloc(strlen(s));
    for (int i = 0; s[i] != '\0'; i++)
        out[i] = s[i] - 32;
    out[strlen(s)] = '\0';
    return out;
}

int main(void) {
    int a[4] = {10, 20, 30, 40};
    int *q = a + 1;
    bump(q, 3);
    printf("%d %d %d\n", a[0], a[2], *q);

    int *r = q;
    r++;
    printf("%d %td\n", *r, r - a);

    char *u = copy_upper("abc");
    printf("%s\n", u);
    free(u);
    return 0;
}