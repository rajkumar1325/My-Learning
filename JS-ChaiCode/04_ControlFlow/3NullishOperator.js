// Nullish Coalescing Operator(??)
//here all is done on 'Null' and 'Undefined'

//always replace the null / undefined values with a variable or function, so that my program never crashes. 
// {just like a safety check}

//its just a fallback or error-handling method


let val1

// val1 = 5 ?? 10
// val1 = 5 ?? null
// val1 = null ?? 10
// val1 = undefined ?? 15
val1 = undefined ?? 12 ?? 254   //first value that it get, gets assigned

console.log(val1)





//TERNIARY OPERATOR
const val2 = 23;

val2 == 23 ? console.log("yes") : console.log("no")