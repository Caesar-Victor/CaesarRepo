// encode
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

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

void encode(FILE *arquivo, char *senha, char *nome)
{
  char car, ca;
  int k = 0;
  if (check(arquivo))
  {
    printf("Arquivo ja codificado");
    return;
  }
  rewind(arquivo);
  recebeSenha(senha);
  char s1, s2;
  gera_raizes(senha, &s1, &s2);
  FILE *novo;
  strcat(nome, ".enc");
  novo = fopen(nome, "wb");
  fprintf(novo, "ENCD%c%c", s1, s2);
  int cont = 0;
  while (!feof(arquivo))
  {
    ca = fgetc(arquivo);
    if (cont % 2 == 0)
    {
      fprintf(novo, "%c", (ca + s1));
    }
    else if (cont % 2 != 0)
    {
      fprintf(novo, "%c", (ca + s2));
    }
    cont++;
  }
  fclose(novo);
}

bool check(FILE *arquivo){
  char car, ca, c1, c2, c3, c4;
  c1 = fgetc(arquivo);
  c2 = fgetc(arquivo);
  c3 = fgetc(arquivo);
  c4 = fgetc(arquivo);
  if ((c1 == 'E') && (c2 == 'N') && (c3 == 'C') && (c4 == 'D'))
    return true;
  else
    return false;
}

void recebeSenha(char *senha){
  int k;
  char car;
  printf("Digite uma senha, quando terminar aperte ENTER: \n");
  do
  {
    car = getchar();
    senha[k] = car;
    k++;
    printf("*");
  } while (car != 13);
  senha[k] = 0;
} 

int main()
{
  FILE *arquivo;
  char nome[500], senha[500];
  printf("Digite o nome do arquivo a ser codificado: ");
  fgets(nome, sizeof(nome), stdin);

  if ((arquivo = fopen(nome, "r")) != NULL)
    encode(arquivo, senha, nome);
  else
    printf("Erro na leitura do arquivo!\n");

  fclose(arquivo);
  remove(nome);
  remove(senha);
}