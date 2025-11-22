# Create an electric car class that inherit from the car class and has an additional attribute battery_size

class Car:
    def __init__(self, car, model):
        self.carName = car
        self.modelName = model


# inheritance
class ElectriCar(Car): 
    def __init__(self, car, model, battery_size):
        # super is used to access parent attributes {we just pass that placeholder to the parent}
            super().__init__(car, model)
            self.battery = battery_size



# creating object
tesla = ElectriCar("Tesla", "98765", "78kg")

print(tesla.carName)
print(tesla.modelName)
print(tesla.battery)