import math

class Circle():
   def __init__(self, name = 'circle', x = 0.0, y = 0.0, radius = 0.0):
      self.name = name
      self.x = float(x) 
      self.y = float(y)                
      self.radius = float(radius)

   # getters and setters
   def get_name(self):
       return(self.name)

   def set_name(self,name):
       self.name = name

   def get_x(self):
       return(self.x)

   def set_x(self,x):
       self.x = float(x)
       
   def get_y(self):
       return(self.y)

   def set_y(self,y):
       self.y = float(y)       

   def get_radius(self):
       return(self.radius)

   def set_radius(self,radius):
       self.radius = float(radius)
   
   # modifier 
   def area(self):
      return math.pi * self.radius ** 2
  
   def __str__(self):
      return('name = ' + self.name + ' x = ' + str(self.x) + ' y = ' +
             str(self.y) + ' radius = ' + str(self.radius))
      #return('name = '+self.name)   

def main():
  a = Circle() # Circle with default 
  
  # lets set values
  a.set_name('Circulo 0')
  a.set_x(10.0)
  a.set_y(5.0)
  a.set_radius(2.0)
  
  # lets get values
  print('name = ',a.get_name())
  print('x = ',a.get_x())
  print('y = ',a.get_y())
  print('radius = ',a.get_radius())
  
  # alternatively we can use __str__()
  print()
  print('alternativamente podemos fazer uso de __str__')
  print(a)        
      
if __name__ == "__main__": main()
