class Person:
    def __init__(self, name, age):
        self.__name = name     # private attribute
        self.__age = age       # private attribute

    # Getter for name
    def get_name(self):
        return self.__name

    # Setter for name
    def set_name(self, name):
        self.__name = name

    # Getter for age
    def get_age(self):
        return self.__age

    # Setter for age
    def set_age(self, age):
        self.__age = age


# Using the class
p = Person("Alice", 25)

print(p.get_name())   # Alice
print(p.get_age())    # 25

p.set_name("Bob")
p.set_age(30)

print(p.get_name())   # Bob
print(p.get_age())    # 30
