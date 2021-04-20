
import math
class Circle():
   def __init__( self, name = 'circle',x = 0, y = 0, radius = 0.0 ):
      self.name = name
      self.x = float( x )                # forcing to be float if it is not !
      self.y = float( y )
      self.radius = float( radius )

   def area( self ):
      return math.pi * self.radius ** 2

def main():
    lista_de_circulos=[]   # lista aonde sera armazenado os objetos do tipo circulo
    # Lista com parametros que definem circulos
    # x,y,radius
    parametros_do_circulo = [[1.0,2.0,3.0],[1.5,2.0,4.0],[2.0,2.0,1.0],[1.5,3.0,1.0]]
    numero_de_circulos = len(parametros_do_circulo)
    for k in range(numero_de_circulos):
        # nome do circulo é gerado como 'Circle'+str(k)
        a = Circle('Circle'+str(k),parametros_do_circulo[k][0], parametros_do_circulo[k][1], parametros_do_circulo[k][2])
        lista_de_circulos.append(a) # insere novo circulo na lista
    # checa o conteudo de cada objeto do tipo circulo contido na lista
    for k in range(numero_de_circulos):
        print('Nome do circulo =',lista_de_circulos[k].name)
        print('cordenada x =',lista_de_circulos[k].x)
        print('cordenada y =',lista_de_circulos[k].y)
        print('raio =',lista_de_circulos[k].radius)
if __name__ == "__main__": main()