# keep track of how many objects are created using the class
class A:
    TotalCar =0

    def __init__(self, carName, modelName):
        self.car = carName
        self.model = modelName
        A.TotalCar +=1  #increment each tiem whenveer the function is called, as its a constructor -- gets auto called


b = A("Toyota", "Arena")
A("Tata"," Safari")             #creting object without reference

print(A.TotalCar)