import math

class Polygon():
   def __init__(self, name = 'Polygon'):
        self.name = name

   # getters and setters
   def get_name(self):
       return(self.__name)
   def set_name(self,name):
       self.__name = name
   name = property(get_name,set_name)


class Circle(Polygon):
   def __init__(self, name = 'circle', x = 0.0, y = 0.0, radius = 0.0):
      Polygon.__init__(self,name)
      self.x = float(x) 
      self.y = float(y)                
      self.radius = float(radius)

   def get_x(self):
       return(self.__x)
   def set_x(self,x):
       self.__x = float(x)       
   x = property(get_x,set_x)    
       
   def get_y(self):
       return(self.__y)
   def set_y(self,y):
       self.__y = float(y)       
   y = property(get_y,set_y)

   def get_radius(self):
       return(self.__radius)
   def set_radius(self,radius):
       self.__radius = float(radius)       
   radius = property(get_radius,set_radius)

   # modifier
   def area(self):
      return math.pi * self.radius ** 2
  
   def __str__(self):
      return('name = '+ self.name + ' x = ' + str(self.x) + ' y = ' +
             str(self.y) + ' radius = ' + str(self.radius))
      #return('name = '+self.name)   

class Square(Polygon):
   def __init__(self, name = 'circle', x = 0.0, y = 0.0, side = 0.0):
      Polygon.__init__(self,name)
      self.x = float(x) 
      self.y = float(y)                
      self.side = float(side)
      
   def get_x(self):
       return(self.__x)
   def set_x(self,x):
       self.__x = float(x)       
   x = property(get_x,set_x)    
       
   def get_y(self):
       return(self.__y)
   def set_y(self,y):
       self.__y = float(y)       
   y = property(get_y,set_y)

   def get_side(self):
       return(self.__side)
   def set_side(self,side):
       self.__side = float(side)       
   side = property(get_side,set_side)

   # modifier
   def area(self):
      return self.side ** 2
  
   def __str__(self):
      return('name = '+ self.name + ' x = ' + str(self.x) + ' y = ' +
             str(self.y) + ' side = ' + str(self.side))

def main():
  a = Circle() # Circle with default values
  
  # in the following we use the interface concept
  # lets set values
  a.name = 'Circulo 0'
  a.x = 10.0
  a.y = 5.0
  a.radius = 2.0
  print(a)
  
  b = Square()
  b.name = 'Square 0'
  b.x = 1.0
  b.y = 1.0
  b.side = 1.0 
  print(b)
  
if __name__ == "__main__": main()
