// Normal function
function chai(name){
    console.log(`This is my name ${name}`)
}
chai("Reading");



// IIFE (immediately invoked function)
//  NAMED IIFE--> just wrap the fn and call it.
(function fun1(naming){
    console.log(`This is ${naming}`)
} )(); //use semicolon ; as it is mandatary to terminate it.


// Un-named IIFE
((arg1) => {
    console.log(arg1)
}) ('Rashmi');