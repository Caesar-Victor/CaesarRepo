#include <stdio.h> /*teste no pc*/
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

#define maxcol 4
/*Função que calcula o tamanho de vetores*/
int len(float v[]) {
    printf("%d %d\n", sizeof(v), sizeof(v[0]));
    return sizeof(v)/sizeof(v[0]);
}
/*Função que gera a matriz nxn
void criaMatriz(float *M, int n){ 
    M = (float **) malloc (sizeof(float)*n);
    for (int i = 0; i < n; i++ ) {
        M[i] = (float*) malloc (sizeof(float)*n);
    }
}*/
/*?Função que preenche uma matriz nxn
void preencheMatriz(float M[][maxcol]){
    int n = len(M[0]), j=0;
    char c;
    float *v=NULL;
    v = (float*) malloc(n* sizeof(float));
    for (int i = 0; i < n; i++){
        while(j<n){
            printf("\nDigite a posicao [%d][%d] da matriz: ", i+1, j+1);
            scanf("%d", &v[j]);
            imprimeVet(v);
            printf("A linha esta correta?(s, n): ");
            scanf("%c", &c);
            if (c == "s" || c == "S"){
                M[i] = v;
                j++;
            }
        }
    }
}*/
/*Função que preenche um vetor*/
void preencheVetor(float v[]){
    for (int i=0; i < len(v); i++){
        printf("Digite o numero da posição %d do vetor v: ", i+1);
        scanf("%f", &v[i]);
    }
}
/*Função que Calcula a norma de um vetor*/
float norma(float v[]){
    int a=0;
    for (int i=0; i<len(v); i++){
        a+=pow(v[i], 2);
    }
    return sqrt(a);
}
/*Função que imprime um vetor no terminal*/
void imprimeVet (float v[]){
    for (int i=0; i < len(v); i++){
      printf("%f ", v[i]);
    }
    printf("\n");    
}
/*Função que imprime uma matriz no terminal*/
void imprimeMat (float M[][maxcol]){
    int n = len (M[0]);
    for(int i=0; i<n; i++){
        imprimeVet(M[i]);
        printf("\n");
    }
}
/*Função que implementa o metodo de potencia e retorna o tempo de execução em segundos*/
int potencia(float M[][maxcol]){ 
    time_t start = time(NULL);
    int n = len(M[0]);
    /* av = vetor com os autovalores nv = vetor calculado, v = vetor dado, a = auxiliar, e = erro*/
    float a=0, e=0.000001, *nv = NULL,  *v = NULL, *av=NULL; 
    nv = (float *) malloc(n * sizeof(float));
    v = (float *) malloc(n * sizeof(float));
    av = (float *) malloc(n * sizeof(float));

    preencheVetor(v);
    /*Laço a ser executado enquanto o vetor calculado nao se aproxima do vetor dado por e*/
    while(fabs(norma(v)-norma(nv))>e){
        for(int i=0; i<n; i++){
            for(int j=0; j<n; j++){
                a+=M[i][j]*v[j];
            }                       /*nv[k+1] = Av[k]*/
            nv[i]=a;
            a=0;
        }
        for(int i=0; i<n; i++){
            v[i]=nv[i]/norma(nv);   /*v[k+1] = nv[k+1]/||nv[k+1]||*/
        }
    }
    
    for(int i=0; i<n; i++){
        a=0;
        for(int j=0; j<n; j++){
            a+=v[j]*M[j][i];        /*(v[k+1])^T * A*/
        }
        nv[i]=a;
        a=0;
        for(int j=0; j<n; j++){
            a+=nv[j]*v[j];          /*(v[k+1])^T * A * v[k+1]*/
        }
        av[i]=a;                    /*a[k+1] = (v[k+1])^T * A * v[k+1]*/
    }

    imprimeVet(v);
    printf("vetor calculado\n");

    imprimeVet(av);
    printf("Autovalores\n");

    free(v);
    free(nv);
    return time(NULL) - start;
}
/*Função que preenche a Matriz de givens correspondente em torno do eixo Z*/
void preencheabg(float a[], float b[], float g[], float M[][maxcol]){
    int n = len(M[0]);
    for (int i=0; i<n; i++){
        for (int j=0; j<n; j++){
            if(i == j)
                a[i]=M[i][j];
            else if (i == j-1)
                g[i] == M[i][j];
            else if (i == j+1)
                b[i-1]==M[i][j];
        }
    }
}
/*Função que implementa o Algoritimo QR*/
void qr(float M[][maxcol], float B[][maxcol]){
    int n = len(M[0]);
    float *av;/*vetor de autovalores*/
    av = (float *) malloc(n * sizeof(float));


}
/*Função que implementa o Algoritimo QR com deslocamentos espectrais*/
void qrDeslocado(float M[][maxcol], float B[][maxcol]){
    int n = len(M[0]);
    float *av;/*vetor de autovalores*/
    av = (float *) malloc(n * sizeof(float));


}
/*Função que implementa Rotação de Givens e retorna o tempo de execução em segundos*/
int givens(float M[][maxcol], char x){
    time_t start = time(NULL);
    int n = len(M[0]), k=0, i=0, j=0;
    float *alfa=NULL, *beta=NULL, *gama=NULL, *cos=NULL, *sen=NULL, ab, **B;
    alfa = (float *) malloc(n * sizeof(float));
    beta = (float *) malloc((n-1) * sizeof(float));
    gama = (float *) malloc((n-1) * sizeof(float));
    cos = (float *) malloc(n * sizeof(float));
    sen = (float *) malloc(n * sizeof(float));

    B = (float **) malloc (sizeof(float)*n);
    for (int i = 0; i < n; i++ ) {
        B[i] = (float*) malloc (sizeof(float)*n);
    }
    /*criaMatriz(B, n);*/
    preencheabg(alfa, beta, gama, M);

    for (int i=0; i<n; i++){
        ab = sqrt((pow(alfa[i], 2)+pow(beta[i], 2)));
        cos[i] = alfa[i] / ab;
        sen[i] = -beta[i] / ab;
    }

    for (k=0; k<n; k++){
        for (i=0; i<n; i++){
            B[i][k] = cos[k] * M[i][k] - sen[k] * M[i][k];
            for (j; j<n; j++){
                B[j][k] = sen[k] * M[i][k] + cos[k] * M[j][k];
            }
        }
    }

    imprimeMat(M);


    if (x == 'd')
        qrDeslocado(M, B);
    else
        qr(M, B);

    return time(NULL) - start;
}

int main(int argc, char const *argv[]) {
    int n, t1;
    printf("Digite o tamanho da matriz: ");
    scanf("%d", &n);
    float **M;

    M = (float **) malloc (sizeof(float)*n);
    for (int i = 0; i < n; i++ ) {
        M[i] = (float*) malloc (sizeof(float)*n);
    }
    bool check = false;
    char c;
    float *v=NULL;
    v = (float*) malloc(n*sizeof(float));
    printf("%d %d \n", sizeof(v), sizeof(v[0]));
    for (int i = 0; i < n; i++){
        while(check == false){
            for(int j = 0; j <n; j++){
                printf("\nDigite a posicao [%d][%d] da matriz: ", i+1, j+1);
                scanf("%f", &v[j]);
            }
            imprimeVet(v);
            printf("A linha esta correta?(s, n): ");
            scanf(" %c", &c);
            if (c == 's' || c == 'S'){
                M[i] = v;
                check = true;
            }
        }
    }

/*    criaMatriz(M, n);
    preencheMatriz(M);*/

    printf("Escolha qual metodo irá usar: \n(0) - Sair \n(1) - Metodo da potência");
    printf("\n(2) - Rotações de Givens e a fatoração QR de uma matriz tridiagona: ,");
    printf("\n(3) - Algoritimo QR com deslocamentos espectrais: ");
    scanf("%d", &n);

    while (n>0){
        switch(n){
            case 1:
                t1 = potencia(M);
                printf("O tempo de execução do Metodo de potencia foi: %d", t1);

            case 2:
                t1 = givens(M, 'n');
                printf("O tempo de execução do Algoritimo QR foi: %d", t1);  

            case 3:
                t1 = givens(M, 'd');         
                printf("O tempo de execução do Algoritimo QR deslocado foi: %d", t1);  

        }
    printf("Escolha qual metodo irá usar: \n(0) - Sair \n(1) - Metodo da potência \n(2) - Rotações de Givens e a fatoração QR de uma matriz tridiagona: ");
    scanf("%d", n);
    }

    
}    
