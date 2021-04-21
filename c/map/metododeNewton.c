#include <stdio.h>
#include <math.h>
#include <stdlib.h>

void fflinha(int i, float x, float f[]);

int main(int argc, char const *argv[]) {
    float fflinha = {0, 0};
    float x = 10, emax = 0.000001, e = 10000; 
    int c = 0;
    for (int i=0; i<=5; i++){
        c = 0;
        e = 1000;
        x = 10;
        do{
        c += 1; 
        fflinha(i, x, fflinha);
        if (e >= fabs(fflinha[0] - x)){
            e = fabs(fflinha[0] - x);
            x = x - fflinha[0]/fflinha[1];
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
    return 0;
}

void fflinha(int i, float x, float f[]){
    switch (i)
    {
    case 0:
        f[0] = cos(x);
        f[1] = -sen(x);
        break;
    
    case 1:
        f[0] = pow(x, 4) - 8 * x*x + x + 16;
        f[1] = 4*pow(x, 3) - 16 x + 1;
        break;

    case 2:
        f[0] = 2+exp(-x);
        f[1] = -exp(-x);
        break;

    case 3:
        f[0] = exp(x)-2;
        f[1] = exp(x);
        break;

    case 4:
        f[0] = pow(x, 2);
        f[1] = 2*x;
        break;

    case 5:
        f[0] = sqrt(x);
        f[1] = 1/(2*sqrt(x));
        break;

    default:
        break;
    } 
}