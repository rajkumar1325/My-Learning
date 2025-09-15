# Function

## use keyword `function fun_name(){ }` //definition
- fun_name      //It just simply says, function is present there
- fun_name()    //function call

If I doesn't specify return anything, It says `undefined`
If I doesn't pass any argument inside a function, It says `undefined` not `null`

### NOTE:
- undefined is marked as `false`
- blank is also marked as `false`


---
# SCOPES 
- {keywords: let, var, const}
- We have 2 options: Block-Scope and Global-Scope //simple

--- 
# DAY04 
## this keyword
- this is used to refer to the current context (under same scope).
- we cant able to print "this" keyword under fns only and not under any object

### Note: {window} object is the most global object under browser //so we can capture all fns like onclick/formSubmit etc...


# DAY05
- arrow functions are the shorthand to write functions
- remove the use of "function" keyword 
- Also able to use implicit return : we assume it gonna return so no need to type return keyword

- In Implicit return: if we use braces{} we have to use return keyword.
- In Implicit return: if we use parenthesis() we dont have to use return keyword.

- we use this parenthesis to return the object.




# DAY06
- to remove the global scope pollution we use IIFE(immediately invoked function)
- just wrap the fn and call it
- Remember when writing more than 1 IIFE --> must use semicolon to terminate (as it gives non-recognisible error)



# DAY07
JAVASCRIPT EXECUTATION CONTEXT (how data is executed inside the JS code)

#### Whenever I give a JS file
- A global EC is formed. and transferred to 'this' keyword/variable.
- Function EC
- Eval EC (mentioned in some docs)

#### JS is run in 2 phases
- Memory Creation Phase(or Creation phase)  --> only memory allocated not runs.
- Execution phase


##### Flowchart 
- Global execution phase(this keyword) --> Memory Allocation Phase --> \
in memory phase firstly all 'var' is assigned to 'undefined'.
whenever a fn is called, A 'new executational context is formed'

