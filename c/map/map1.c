#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int main()
{
    float x = 6; 
    float f = ((x * x) + 2) / (2 * x);
    int i = 0; 
    float e = 0.000001;
    do{
        i += 1; 
        f = ((f * f) + 2) / (2 * f);
        printf("erro = %f\n", f-sqrt(2));
    }while (f-sqrt(2)>e || i>1000); 
    
    if (i<1000){
        printf("Numero de iterações necessárias com X0 = %f e erro = %f: %d", x, e, i);
    }else printf("Nao foi possível fazer uma boa aproximacão");
    return 0;
}
