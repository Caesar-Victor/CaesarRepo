#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>

void f0(){
   printf("sou f0");
}

void f1(){
   printf("sou f1");
}

int main(){
   char str[2] = "f0";
   for (int i = 0; i <= 1; i++){
         str[1] = i;
         printf("%s\n", str);
   }
   return 0;     
}
