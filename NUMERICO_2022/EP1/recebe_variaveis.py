############################################################
# Disciplina: Métodos numéricos e aplicações (MAP3121)     #
# Alunos: Victor Nascimento Pereira, número USP: 10773530  #
# ####### Gabriel Youssef Campos,    número USP: 10884301  #
############################################################

def recebe_variaveis_usuario():

    caso=input("Resolver usando a decomposição para A geral ou tridiagonal? (G/T)")

    print("A variável n corresponde ao tamanho da matriz A (nxn).")
    n = int(input("Entre com o valor de n: "))
    n = round(n)    # A função round arredonda n para o inteiro mais próximo; ela no ajuda a fazer uma 
                    # "programação defensiva" para o caso em que o valor de n digitado pelo usuário não 
                    # é um número inteiro.
    return caso, n