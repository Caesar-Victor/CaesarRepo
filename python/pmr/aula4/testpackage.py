from polygonpackage import Circle
from polygonpackage import Square
 
def main():
  a = Circle() # Circle with default values
  
  a.name = 'Circulo 0'
  a.x = 5.0
  a.y = 3.0
  a.radius = 1.0
  
  print(a)
  
  b = Square()
  b.name = 'Square 0'
  b.x = 2.0
  b.y = 7.0
  b.side = 2.0
  print(b)
      
if __name__ == "__main__": main()
