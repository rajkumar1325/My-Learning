# polymorphism -- many forms
# demonstrate polymophism by defining a method fuel_type in both car and electric-car classes, but with differnent behaviour.

class Car:
    def __init__(self, car, model):
        self.name = car
        self.model = model

    def Fuel_type(self):
        return "Petrol or Diesel"

# inheritance
class ElectricCar(Car):
    def __init__(self, car, model):
        super().__init__(car, model)

    def Fuel_type(self):
        # super().Fuel_type() --> not this one
        return "Electric Charge"
    

tesla = ElectricCar("Tesla", "M$876")
print(tesla.Fuel_type())



# creating another object
safari = Car("Tata", "Safari")
print(safari.Fuel_type())


# ------------------Here we have same method and object but have differnet behaviour