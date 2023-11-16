import math

class Point():
   def __init__( self, xValue, yValue):
      self.x = float(xValue)
      self.y = float(yValue)
      
   def printxy(self):                # imprime as variaveis internas de Point
        print('cordenada x =',self.x)
        print('cordenada y =',self.y)
        
class Polygon:
    numero = 0
    def __init__(self,name,x,y):
        self.name=name
        self.coord=Point(x,y)   # ponto que ancora o poligono
        
    def area(self):
        print('Necessario implementacao especifica de area()')
        return(0.0)
        
class Circle(Polygon):
   def __init__(self,name, x, y, radius):
      #self.name=name
      Polygon.__init__(self,name,x,y)                     
      self.radius = float(radius)
      Polygon.numero = Polygon.numero + 1

   def area( self ):
      return math.pi * self.radius ** 2
  
   def printcontent(self):
      print('name =',self.name)
      self.coord.printxy()
      print('radius =',self.radius)

class Square(Polygon):
    def __init__(self,name='square',x=0,y=0,side=0):
        Polygon.__init__(self,name,x,y)
        self.side = float(side)
        Polygon.numero = Polygon.numero + 1
        
    def printcontent(self):
        print('name =',self.name)
        self.coord.printxy()
        print('side =',self.side)

def main():
    lista_de_poligonos=[]   # lista aonde sera armazenado os objetos do tipo Polygon
    # Lista com parametros que definem os poligonos
    parametros_dos_poligonos = [['circle','circ0',1.0,2.0,3.0],['circle','circ1',1.5,2.0,4.0],['square','square0',2.0,2.0,1.0]]
   
    numero_de_poligonos = len(parametros_dos_poligonos)
    
    for k in range(numero_de_poligonos):
        # 
        if parametros_dos_poligonos[k][0]=='circle':
            name=parametros_dos_poligonos[k][1]
            x=parametros_dos_poligonos[k][2]
            y=parametros_dos_poligonos[k][3]
            radius=parametros_dos_poligonos[k][4]
            a=Circle(name,x,y,radius)
            lista_de_poligonos.append(a)      # insere novo circulo na lista        
        elif parametros_dos_poligonos[k][0]=='square':
             name=parametros_dos_poligonos[k][1]
             x=parametros_dos_poligonos[k][2]
             y=parametros_dos_poligonos[k][3]
             side=parametros_dos_poligonos[k][4]
             a=Square(name,x,y,side)
             lista_de_poligonos.append(a)     # insere novo square na lista
        else:
            print('Tipo de poligono nao identificado')
            
    numero_de_poligonos_na_lista=len(lista_de_poligonos) 
    for k in range(numero_de_poligonos_na_lista):
        if type(lista_de_poligonos[k]) is Circle:
            print('Isto e um poligono do tipo Circle')
        else:
            print('Isto e um poligono tipo Square')
        lista_de_poligonos[k].printcontent()
        print('area =',lista_de_poligonos[k].area())
        print()
    print('Numero total de poligonos =',Polygon.numero)
    
if __name__ == "__main__": main()
