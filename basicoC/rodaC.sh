#!/bin/bash

echo "Qual programa deseja rodar?"
read programa
if [ -e $programa.c ] 
then
    gcc -g $programa.c -o $programa -lm
    ./$programa
else
    echo "Não foi possivel encontrar o código $programa.c"
fi