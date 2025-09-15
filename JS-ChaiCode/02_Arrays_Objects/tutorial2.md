# Array
- in js : Array can be heterogenous and have flexible sixe

## We  have 2 methods to create:
- 1st : const myArray = [1,2,3,4,5]
- 2nd : const myArray = new Array(1,2,3,4,5)


- - console.log(array1+array2) //it joins both and returns a string

---
## Interview : Slice vs Splice
- Slice : slice create Shallow copy, without modifying original {end included}
- Splice : modifies the original array {end excluded}

---

## Objects
- can be constructed using 2 options:
- - by literal : If we declare by literal, singleton(only one onject can be formed) not formed.
Syntax : Object.create

- - by constructor : Singleton form here
Syntax : const user = { }

### we can access by 2 notations
- 1st : using .(dot) operator
- parsing as string


---
## Creating an funciton inside an object
- Object_name.fun_name = function(){
    print(this.object_attribute_name)
}


---
# STRING CONCATINATION
2 options:

1. Object Spread Operator (...)
- const combined = { ...ob1, ...ob2 };

2. Object.assign()
- const combined = Object.assign(ob1, ob2); //braces are optional
- const combined = Object.assign({}, ob1, ob2);



---
<!-- DAY 5 -->
# Object De-structure
- Object destructuring allows you to extract properties from objects into variables in a concise way.
- just use the { } in the LHS and it will behave as destructure (no use of accessing with . opertor)
- You use curly braces {} on the left-hand side of an assignment to specify the properties you want to extract from an object. The names within the curly braces should match the property names in the object you are destructuring.


