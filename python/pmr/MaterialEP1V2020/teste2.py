# inicialmente lista e' um dicionario de dicionarios
# cujo indexador primario sao letras do alfabeto
lista = {'a': {}, 'b': {}}
print(lista)
# Se for encontrado a palavra abelha devemos adicionar
# no dicionario da letra 'a'
lista['a'].update([('abelha', 1)])
# o mesmo para 'bola' no dicionario da letra 'b'
lista['b'].update([('bola', 1)])
lista['a'].update([('amora', 1)])
lista['b'].update([('beterraba', 1)])
print(lista)
# Para cada palavra devemos saber se ela ja existe ou nao
# A insercao deve ser condicional
# como mostrado abaixo
if 'beterraba' in lista['b']:  # se ja existe o conteudo deve ser
    # incrementado
    count = lista['b']['beterraba']
    count = count+1
    lista['b']['beterraba'] = count
else:  # palavra ainda nao existe
    lista['b'].update([('beterraba', 1)])
print(lista)

x = lista['a'].popitem()
print('x = ',x)
print('x[0] = ',x[0])
print('x[1] = ',x[1])
print('lista = ',lista)
