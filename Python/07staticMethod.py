# Adding a static method to the car that returns a general description of a car.
# Static means --> belongs to the class rather than the instance of the object --> so no need of self

class Car:
    def __init__(self, carName, modelName):
        self.car = carName
        self.model = modelName
    

    @staticmethod
    def Description():
        return 'The car is good enough'
    

mycar = Car("Tata", "Safari")
print(mycar.car)
print(mycar.model)
print(mycar.Description())
