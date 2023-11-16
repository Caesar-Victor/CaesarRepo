from .Polygon import Polygon

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
