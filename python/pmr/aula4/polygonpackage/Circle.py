import math
from .Polygon import Polygon

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
