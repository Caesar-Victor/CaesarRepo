#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <stdbool.h>

int main()
{
    float x = 1, f = cos(x), emax = 0.000001, e; 
    int i = 0; 
    do{
        i += 1; 
        e = fabs(cos(f)-f);
        f = cos(f);
        printf("Modulo do erro = %f\n", e);
    }while(e>emax && i<1000); 
    
    if (i<1000){
        printf("Numero de iterações necessarias com X0 = %f e erro = %f: %d\n", x, e, i);
    }else {
        printf("Nao foipossivel fazer uma boa aproximacao\n");
    }
    return 0;
}
