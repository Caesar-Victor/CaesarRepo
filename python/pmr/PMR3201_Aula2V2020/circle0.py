
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
    a=Circle('Circ0',1,1,3)
    # examinando o conteudo interno do objeto a
    print('Conteudo interno do objeto a')
    print('a.name=',a.name)
    print('a.x=',a.x)
    print('a.y=',a.y)
    print('a.radius=',a.radius)
    print('Area do Circulo',a.name,'=',a.area(),'\n')
    
    # Cria objeto b, Circle com valores default
    b=Circle()
    # examinando o conteudo interno do objeto b
    print('Conteudo interno do objeto b - Valores default')
    print('b.name=',b.name)
    print('b.x=',b.x)
    print('b.y=',b.y)
    print('b.radius=',b.radius)
    print('Area do Circulo',b.name,'=',b.area(),'\n')
if __name__ == "__main__": main()