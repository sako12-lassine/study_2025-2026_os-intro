#include <stdio.h>
#include <stdlib.h>

int main() {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);
    
    if (n > 0) {
        printf("%d is positive\n", n);
        exit(1);
    } else if (n < 0) {
        printf("%d is negative\n", n);
        exit(2);
    } else {
        printf("%d is zero\n", n);
        exit(0);
    }
}
