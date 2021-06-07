//decode
#include <stdio.h>
#include <string.h>

void gera_raizes(const char *pass, unsigned char *r1, unsigned char *r2)
{
  int i;
  *r1 = *r2 = 0;
  for (i = 0; i < strlen(pass); i++)
  {
    *r1 = *r1 + pass[i] * i + strlen(pass);
    *r2 = *r2 + pass[i] * (i - 5);
  }
}
int main(void)
{
  FILE *arquivo;
  char nome[500], x[200];
  char senha[500], car, ca;
  int k = 0;
  printf("Digite o nome do arquivo a ser decodificado: ");
  scanf(nome);
  arquivo = fopen(nome, "rb");
  strcpy(x, nome);
  char c1, c2, c3, c4;
  c1 = fgetc(arquivo);
  c2 = fgetc(arquivo);
  c3 = fgetc(arquivo);
  c4 = fgetc(arquivo);
  if ((c1 != 'E') || (c2 != 'N') || (c3 != 'C') || (c4 != 'D'))
  {
    printf("Arquivo nao codificado");
    getch();
    return 0;
  }
  printf("Digite uma senha, quando terminar aperte ENTER: \n");
  do
  {
    car = getch();
    senha[k] = car;
    k++;
    printf("*");
  } while (car != 13);
  senha[k] = 0;
  char s1, s2, c5, c6;
  gera_raizes(senha, &s1, &s2);
  c5 = fgetc(arquivo);
  c6 = fgetc(arquivo);
  if ((c5 != s1) || (c6 != s2))
  {
    printf("senha incorreta");
    getch();
    return 0;
  }

  FILE *novo;
  int j = -1;
  do
  {
    j++;
  } while ((nome[j - 2] != 'E') && (nome[j - 1] != 'N') && (nome[j] != 'C'));

  nome[j] = nome[j - 1] = nome[j - 2] = nome[j - 3] = 0;

  novo = fopen(nome, "wb");

  int cont = 0;

  while (!feof(arquivo))
  {
    ca = fgetc(arquivo);
    if (cont % 2 == 0)
    {
      fprintf(novo, "%c", ca - s1);
    }
    else if (cont % 2 != 0)
    {
      fprintf(novo, "%c", ca - s2);
    }
    cont++;
  }
  fclose(arquivo);
  fclose(novo);
  remove(x);
}
