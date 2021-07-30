#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <stdbool.h>

double f (int i, float x){
    switch (i)
    {
    case 0:
        return pow(x, 4) - 8 * x*x + x + 16;
        break;
    
    case 1:
        return cos(x);
        break;

    case 2:
        return 2+exp(-x);
        break;

    case 3:
        return exp(x)-2;
        break;

    case 4:
        return pow(x, 2);
        break;

    case 5:
        return sqrt(x);
        break;

    default:
        break;
    } 
}

int main(){
    float x = 10, emax = 0.000001, e = 10000; 
    int c = 0;
    for (int i=0; i<=5; i++){
        c = 0;
        e = 1000;
        x = 10;
        do{
        c += 1; 
        if (e >= fabs(f(i, x) - x)){
            e = fabs(f(i, x) - x);
            x = f(i, x);
            printf("Modulo do erro = %f\n", e);
        }else {
            c = 1000;
        }
        }while(e>emax && c<1000); 
        if (c<1000){
        printf("Numero de iterações necessárias com X0 = %f e erro = %f para F%d: %d\n\n", x, emax, i, c);
        }else {
        printf("Nao foi possível fazer uma boa aproximação para F%d\n\n", i);
        }
    }
    return 0;
}