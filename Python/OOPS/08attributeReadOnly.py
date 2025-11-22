# Making the vriable read-only/.


class Car:
    def __init__(self, Car_name, model_name):
        self.car = Car_name
        self.__model = model_name


    @property   #....................... --> used to make the attribute read-only
    def model(self): # property name must match
        return self.__model

myCar = Car("Tata", "Safari")
print(f"Car: {myCar.car} and {myCar.model}")


# print('\n')
# myCar.model = "Hyundai"
# print(f"Car: {myCar.car} and {myCar.model}")
