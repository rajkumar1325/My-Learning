# Demonstrate the use of isInstance() to check if my-tesla is an instance of car and electricCar.
# --> prove that electic car is an insitamce of upper-class

# use the "isInstance" inbuilt fn to check whehter this object is from that class or not!!
class Car:
    def __init__(self, car_name, car_model):
        self.car = car_name
        self.model = car_model


class ElectricCar(Car):
    def __init__(self, car_name, car_model, battery_capcity):
        super().__init__(car_name, car_model)
        self.battery = battery_capcity


toyota = Car("Tata", "Safari")
tesla = ElectricCar("TeslaEV", "TV2345","89KW")


print(isinstance(toyota, ElectricCar)) #-->false 
print(isinstance(tesla, ElectricCar))  #-->true

