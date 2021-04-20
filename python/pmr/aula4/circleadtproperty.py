import math

class Circle():
   def __init__(self, name = 'circle', x = 0.0, y = 0.0, radius = 0.0):
      self.__name = name
      self.__x = float(x) 
      self.__y = float(y)                
      self.__radius = float(radius)

   # getters and setters
   def get_name(self):
       return(self.__name)
   def set_name(self,name):
       self.__name = name
   name = property(get_name,set_name)

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

def main():
  a = Circle() # Circle with default values
  
  # in the following we use the interface concept
  # lets set values
  a.name = 'Circulo 0'
  a.x = 10.0
  a.y = 5.0
  a.radius = 2.0
  
  # lets get values
  print('name = ',a.name)
  print('x = ',a.x)
  print('y = ',a.y)
  print('radius = ',a.radius)  
  
  # alternatively we can use __str__()
  print()
  print('alternativamente podemos fazer uso de __str__')
  print(a)
      
if __name__ == "__main__": main()
