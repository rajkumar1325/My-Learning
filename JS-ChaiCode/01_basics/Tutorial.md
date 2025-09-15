node is used to run the JS file inside the VS code, without using the browser.
To run the JS file : `node file_name.js`

To print multiple files in at single Console.
use `console.table([var1, var2, var3,...])` //It prints all the parsed variable in tabular form `// Array`
also write this `console.table({var1, var3, var3})` ; it accepts single argument only `//Object`


<!-- VAriable initialisation -->
`var` : var is function-scoped: This means a variable declared with var is accessible throughout the entire function in which it is declared, regardless of block boundaries ```prefer not use now, due to scope issues.```

`let` : let is block-scoped: This means a variable declared with let is only accessible within the specific block of code

`const` : make the variable constant, so it cant be changed later

if we just define a variable and not initialise --> considered as 1 `undefined`


<!-- To ensure all the code runs as of latest version, not run like by previous/older engine -->
type `  "use strict";  ` at the top of the code --> ensures all the code written is runs through the latest version.



## DATATYPES
### Primitive data-types
- number    -->  2^53
- bigint    --> handle big integer values
- string
- boolean   --> true/false
- null      --> stand_alone value
- undefined --> defined but not initialised
- symbol    --> use to handle unique

<!-- typeof() : finds type  {note braces after typeof is optional}-->
console.log(typeof undefined) //undefined
console.log(typeof null) //object


---
<!-- 04_Comparisions -->
comparision and equality-check operators are works differently.

- equality check (== ) and comparision operator(>  <   >= ...) works differently
- comparision convert NULL to a number, treating it as 0, but equality doesnt.

#### Strict TypeCheck (===) 
checks values along with its data-type
---


---
<!-- SOME INTERVIEW QUESTIONS -->
datatypes of JS
2 Types :(Based on how data is stored and accessed inside the memory)

#### Primitive         {call by values}
whenever we call, Original reference of the values is not given, but a copy of given and we work on it.
- 7 types:  String, Number, Boolean, null, undefined, Symbol, BigInt(use "n" at the last of the number)

#### Non-primitive / Reference types {call by reference}
- 3 types: Array, Objects(key values pair under the {} is called object), Functions


## Return type of variables in JavaScript
1) Primitive Datatypes
       Number => number
       String  => string
       Boolean  => boolean
       null  => object
       undefined  =>  undefined
       Symbol  =>  symbol
       BigInt  =>  bigint

2) Non-primitive Datatypes
       Arrays  =>  object
       Function  =>  function
       Object  =>  object
---


## String
### Code                                             Type                        Behavior
const gameName = "Raj Kumar"                     primitive            ✅ Recommended for most use cases
const gameName = new String("Raj Kumar")         object        ⚠️ Creates a String object, not a primitive

---
### Maths
use toFixed() : to generate precision values upto specified digit


# String
- single and double quotes are same
- backtick ` ` are multiline strings

## Note
`== ` :   2 =='2'    //true
`===` :   2 === '2'  //false         --> type-check