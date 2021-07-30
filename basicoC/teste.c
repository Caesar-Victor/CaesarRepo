#include <stdio.h>
#include <time.h>

void main(){
    time_t t1 = time(NULL);
    int n=1;
    while (n>0){
        printf("Novo n: ");
        scanf("%d", n);
    }
    time_t t2 = time(NULL) - t1;
    printf("%f\n", t2);
}
