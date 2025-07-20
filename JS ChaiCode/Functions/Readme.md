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
