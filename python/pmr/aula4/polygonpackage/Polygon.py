class Polygon():
   def __init__(self, name = 'Polygon'):
        self.name = name

   # getters and setters
   def get_name(self):
       return(self.__name)
   def set_name(self,name):
       self.__name = name
   name = property(get_name,set_name)
   