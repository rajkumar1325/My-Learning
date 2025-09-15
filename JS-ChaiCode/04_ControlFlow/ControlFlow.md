## if
- if () ...code...     :: implicit scope--> write only 1 line of code
- - Note: we can write multiple lines in implicit scope by using comma 

- if() { ..code... }   :: explicit scope--> multiple line scope




<!-- TRUETHY/ FALSY VALUES -->

### Falsy values: {which element are considered false}
- false 
- 0
- -0    (negative 0)
- 0n    (BigInt)
- ""    (empty-string)
- null
- undefined
- Nan


### Truethy values
- "0"           (0 under string)
- 'false'       (true --> under string)
- " "           (space)
- []            (array)
- {}            (object)
- function() {}     (empty-function)



## Nullish Coalescing Operator(??)
- here all is done on 'Null' and 'Undefined'

- always replace the null / undefined values with a variable or function, so that my program never crashes. 
- its just a fallback (safety check) or error-handling method



## Terniary Operator ? : 
- smaller syntax of `if-else`
- condition `?` "true" `:` "false"

