#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#define x0 3.73;

void fflinha(int i, float x, float f[]){
    switch (i)
    {
    case 0:
        f[0] = cos(x) - x;
        f[1] = -sin(x) - 1;
        break;
    
    case 1:
        f[0] = pow(x, 4) - 8 * x*x + x + 16;
        f[1] = 4*pow(x, 3) - 16*x + 1;
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

    case 6:
        f[0] = pow(x, 3) - 6 *x*x + 9*x - 2;
        f[1] = 3 *x*x - 12 * x + 9;

    default:
        break;
    } 
}

int main(int argc, char const *argv[]) {
    float ffli[2] = {0, 0};
    float phi = 0, emax = 0.000001, e = 10000, x = x0; 
    int c = 0;
    for (int i=0; i<=6; i++){
        c = 0;
        e = 1000;
        do{
        c += 1; 
        fflinha(i, x, ffli);
        phi = x - (ffli[0]/ffli[1]);
        if (ffli[1]==0){
            printf("f'(%f) = 0", x);
            c = 1000;
        }else if (e >= fabs(phi - x)){
            e = fabs(phi - x);
            x = phi;
            printf("Modulo do erro = %f\n", e);
        }else {
            c = 1000;
        }
        }while(e>emax && c<1000);
        x = x0; 
        if (c<1000){
        printf("Numero de iterações necessárias com X0 = %f e erro = %f para F%d: %d\n\n", x, emax, i, c);
        }else {
        printf("Nao foi possível fazer uma boa aproximação para F%d\n\n", i);
        }
    }
    return 0;
}

