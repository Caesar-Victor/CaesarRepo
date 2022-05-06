#include <stdio.h>
#include <stdbool.h>

void POLI();

void Intervalo();

void VerificaVet();

void Organiza();

void main()
{
      int i;
      printf("1 - POLI\n2- Intervalo\n3- Verificar Vetor\n4- Organiza: ");
      scanf("%d", &i);
      switch (i)
      {
      case 1:
            POLI();
      case 2:
            Intervalo();
      case 3:
            VerificaVet();
      case 4:
            Organiza();
      }
}

void POLI()
{
      int n;
      printf("Digite um valor: ");
      scanf("%d", &n);
      if (n < 1)
            printf("Erro, n<1\n");
      else
      {
            for (int i = 0; i < n; i++)
                  printf("POLI\n");
      }
}

void Intervalo()
{
      int n, m;
      printf("Digite o limite inferior: ");
      scanf("%d", &n);
      printf("Digite o limite superior: ");
      scanf("%d", &m);
      if (n <= m)
      {
            while (n <= m)
            {
                  printf("%d ", n);
                  n++;
            }
      }
      else
            printf("Erro");
}

void VerificaVet()
{
      int v1[10] = {3, 1, 5, 5, 3, 3, 7, 5, 1, 5};
      int cont = 0;
      bool anterior = false;

      for (int i = 0; i < (sizeof(v1) / sizeof(v1[0])); i++)
      {
            if (v1[i] == 5)
            {
                  cont++;
                  if (anterior)
                  {
                        printf("Fracasso\n");
                        return;
                  }
                  anterior = true;
            }
      }
      if (cont == 5)
            printf("SUCESSO\n");
}

void Organiza()
{
#define ROWS 3
#define COLS 4
#define MAX_SIZE 100

      int indice = 0, resultado = 0;
      char matrix_A[MAX_SIZE] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
      char vector_b[MAX_SIZE] = {1, 2, 3, 4};
      
      printf("A:\n");
      for (int i = 0; i <ROWS; i++){
            for (int j = 0; j<COLS; j++)
                  printf("%d ", matrix_A[indice++]);
            printf("\n");
      }
      printf("b:\n");
      for (int i=0; i<COLS; i++)
            printf("%d\n", vector_b[i]);
      printf("A x b:\n");
      indice = 0;
      for (int i=0; i<ROWS; i++){
            for (int j=0; j<COLS; j++)
                  resultado+=matrix_A[indice++]*vector_b[j];
            printf("%d\n", resultado);
            resultado = 0;
      }
}
