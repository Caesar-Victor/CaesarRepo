#include<stdio.h>
#include<string.h>
#include<stdlib.h>
int main()
{
    char s[] = "4.1234";
    float f;
    f = strtod(s,NULL);
    printf("Float value : %f\n", f);
    return 0;
}