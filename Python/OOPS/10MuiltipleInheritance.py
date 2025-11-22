# Create 2 class Battery and Engine, and let the electric car inherit from both , demonstrating multiple inhertiance

class Battery:
    def BatteryInfo(self):
        return "Battery is Good"

class Engine:
    def EngineInfo(self):
        return "This is engine "

class Car:
    def __init__(self, carName, modelName):
        self.name = carName
        self.model = modelName


class ElectricCar (Battery, Engine, Car):
    pass


mytesla = ElectricCar("Tesla", "Model S" )

print(mytesla.BatteryInfo())
print(mytesla.EngineInfo())
    





#  when you create an object, the very first method Python looks for is __init__().
# ElectricCar.__init__  →  Car.__init__  →  Battery.__init__  →  Engine.__init__  → object.__init__

# BUT:
# ElectricCar has no __init__, so MRO(Method Resolution Order) moves to next class.
# Car has __init__ → Python stops and calls it.
# Battery and Engine do NOT get called because __init__ was already found.
