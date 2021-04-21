#include <stdio.h>
int main()
{
    int a, b;
    char c;
    printf("Digite a: ");
    scanf("%d", &a);
    printf("Digite b: ");
    scanf("%d", &b);
    do{
        printf("Digite a operação(+, -, *, /, s para sair): ");
        'scanf(" %c", &c);'
        if (c == '+')
        {
            printf("a + b = %d\n", a + b);
        }
        else if (c == '-')
        {
            printf("a - b = %d\n", a - b);
        }
        else if (c == '*')
        {
            printf("a * b = %d\n", a * b);
        }
        else if (c == '/')
        {
            printf("a / b = %f\n", a / b);
        }
        else
        {
            printf("Operação inválida\n");
        }
    } while (c =!'s');

    return 0;
}