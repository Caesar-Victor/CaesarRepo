# Private variable
class Cup:
    def __init__(self, color):
        self._color = color    # protected variable
        self.__content = None  # private variable

    def fill(self, beverage):
        self.__content = beverage

    def empty(self):
        self.__content = None
        
    def __str__(self):
        return('color = ' + str(self._color) + 
        ' content = ' + str(self.__content))
       
redCup = Cup("red")
# Does this syntax work ?
redCup.__content = 'tea'
# Let's check !
print(redCup)

# If you want to have direct access to __content you need to use
# the following syntax
print('The correct way')
redCup._Cup__content = 'tea'
print(redCup)
