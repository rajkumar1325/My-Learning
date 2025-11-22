# Crate a car class with attributs like brands and models. Then create a instance of that class. 
# Also add a method to the class that displays the full name



class Car:
    # self is just like a telephone-line --> connects the class and object calling
    def __init__(self, userBrand, userModel):
            self.brand = userBrand
            self.model = userModel
    
    def FullName(self):
        return f"Brand name is {self.brand} and Model is {self.model}"



# creating an object.
myCar = Car("Toyota", "Suzuki")
print(myCar.brand)
print(myCar.model)

# creating another object
myNewCar = Car("Maruti", "Arena")
print(myNewCar.brand)
print(myNewCar.model)


# Accessing a funciton from the class
print(myNewCar.FullName())