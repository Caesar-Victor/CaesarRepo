import math


class Circle():
    def __init__(self, name='circle', x=0, y=0, radius=0.0):
        self.name = name
        self.x = float(x)                # forcing to be float if it is not !
        self.y = float(y)
        self.radius = float(radius)

    def area(self):
        return math.pi * self.radius ** 2


def main():
    lista_de_circulos = []   # lista aonde sera armazenado os objetos do tipo circulo
    # Lista com parametros que definem circulos
    # x,y,radius

    parametros_do_circulo = []

    numero_de_circulos = len(parametros_do_circulo)
    for k in range(numero_de_circulos):
        # nome do circulo é gerado como 'Circle'+str(k)
        a = Circle('Circle'+str(k), parametros_do_circulo[k][0],
                   parametros_do_circulo[k][1], parametros_do_circulo[k][2])
        lista_de_circulos.append(a)  # insere novo circulo na lista

    # checa quais circulos possuem interseccoes com outros circulos
    # raiz quadrada - math.sqrt()
    for i in range(numero_de_circulos):
        for j in range(i+1,numero_de_circulos):
            if lista_de_circulos[i]==lista_de_circulos[j]:
                print(lista_de_circulos[i],' intersepta ',lista_de_circulos[j])
            c1=lista_de_circulos[j].x - lista_de_circulos[i].x
            c2=lista_de_circulos[j].y - lista_de_circulos[i].y
            if c1<0:
                c1=-c1
            if c2 <0:
                c2=-c2
            teste=lista_de_circulos[i].radius+lista_de_circulos[j].radius
            if math.sqrt((c1**2)+(c2**2)) <= teste:
               print(lista_de_circulos[i],' intersepta ',lista_de_circulos[j])
                
                
            

if __name__ == "__main__":
    main()
