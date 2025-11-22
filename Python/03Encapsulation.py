# Encapsulation --> only give limited access.
# modify the car class to encapsulate the brand attribute, making it private and provide a getter method for it. 

# use 2 underScore before a variable to make that private. {private means calss have access but object not}
class Car:
    def __init__(self, carName, modelName):
        self.__brand = carName
        self.model = modelName

    # creating a getter method, convention is to use "get_VAriable-name", can use anything like code_brand etc..
    def get_brand(self):
        return self.__brand + '!'
    

# creating objct
mycar = Car("Maruti", "Suzuki")
print(mycar.model)
# print(mycar.brand) --> # cant access directly like this, have to use getter

print(mycar.get_brand())
