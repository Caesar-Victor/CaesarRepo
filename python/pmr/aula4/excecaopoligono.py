from polygonproperty import Circle, Square


class Error(Exception):
    pass


class NonIdentifiedPolygon(Error):
    pass


class InadequateParameters(Error):
    pass


def main():
    lista_de_poligonos = []   # lista aonde sera armazenado os objetos do tipo Polygon
    # Lista com parametros que definem os poligonos
    parametros_dos_poligonos = [['circle', 'circ0', 1.0, 2.0, 3.0], ['square', 'square0', 2.0, 2.0, 1.0],
                                ['triangle', 2.0, 1.0, 5.0]]

    numero_de_poligonos = len(parametros_dos_poligonos)

    for k in range(numero_de_poligonos):
        try:
            if parametros_dos_poligonos[k][0] == 'circle':
                a = Circle()
                a.name = parametros_dos_poligonos[k][1]
                a.x = parametros_dos_poligonos[k][2]
                a.y = parametros_dos_poligonos[k][3]
                a.radius = parametros_dos_poligonos[k][4]
                raise InadequateParameters
                lista_de_poligonos.append(a) # insere novo circulo na lista
            elif parametros_dos_poligonos[k][0] == 'square':
                a = Square()
                a.name = parametros_dos_poligonos[k][1]
                a.x = parametros_dos_poligonos[k][2]
                a.y = parametros_dos_poligonos[k][3]
                a.side = parametros_dos_poligonos[k][4]
                raise InadequateParameters
                lista_de_poligonos.append(a) # insere novo square na lista
            else:
                raise NonIdentifiedPolygon
        except NonIdentifiedPolygon:
            print()
            print(parametros_dos_poligonos[k][0])
            print('Poligono nao identificado !')
        except InadequateParameters:
            print()
            a=parametros_dos_poligonos[k]
            if len(a) < 5:
                print('Numero de parametros insuficiente')
            elif len(a) >5:
                print('Numero de parametros excessivo')        
            for i in range(2, len(a)):
                if a[i] < 0 or type(a[i]) is not float and type(a[i]) is not int:
                    print(a[i], " é um parametro invalido")
        else:
            print()
            print('Poligono processado corretamente !')
        finally:
            print('Sempre passo por aqui !')

    numero_de_poligonos_na_lista = len(lista_de_poligonos)
    for k in range(numero_de_poligonos_na_lista):
        if type(lista_de_poligonos[k]) is Circle:
            print('\nIsto e um poligono do tipo Circle')
        else:
            print('\nIsto e um poligono do tipo Square')
        print(lista_de_poligonos[k])
        print('area =', lista_de_poligonos[k].area())


if __name__ == "__main__":
    main()
