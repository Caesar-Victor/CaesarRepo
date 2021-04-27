#include <stdio.h>
#include<stdlib.h>

int recolheNum(){
    int numero;
    printf("Digite o primeiro numero: ");
    scanf("%d", &numero);
    return numero;
}

int main(){
    int num = 1, quad;
    printf("Digite uma sequencia terminada por zero: \n");
    num = recolheNum();
    while(num != 0){
        quad = num*num;
        printf("O quadrado de %d = %d\n", num, quad);
        num = recolheNum();
    }
    printf("Acabou...\n");
    return 0;
}
