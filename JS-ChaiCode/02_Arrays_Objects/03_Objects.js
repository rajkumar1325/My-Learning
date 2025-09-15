let object1 = {
    name : "Raj Kumar", //default "name" is stored as a String
    "full name" : "Geetanjali",
    branch : "CSE",
    number : 234567,
    batch : 7867466

}

// ACCESSING an OBJECT : 2 methods
//access by dot
console.log(object1.name) 
console.log(object1.branch)

//access by parsing string
console.log(object1["full name"]) // {only have one option, can't able to access by dot}
console.log(object1["branch"])



// INTERVIEW
console.log("\n\n")
// initialise a Symbol, store it as a key and store it into the onject and print it
const sys1 = Symbol("Raj")
// console.log(typeof(sys1)) //symbol

let JsUser = {
    name : "Geetanjali",
    "full name" : "Geetanjali Mittal",
    // sys1 : "myKey2",         //it act like string
    [sys1] : "myKey2",          // now it act like symbol
    Branch : "Electrical",
}

console.log(JsUser["full name"])
console.log(JsUser[sys1])

console.log(JsUser[sys1]) //accessed as a symbol, not a string

JsUser.Branch = "Computer Science"
console.log(JsUser.Branch)


// make it constant, so no-one can change it
// Object.freeze(JsUser)
// JsUser.Branch = "Cyber Security" //now Object is freezed. it cant able to change, {dont propagate any error}
// console.log(JsUser.Branch)



// Integrating a function inside an object
JsUser.greeting = function(){ //creating an void function
    console.log("Hello Dear, Welcome to the code");
}

console.log(JsUser.greeting()); // undefinedx
console.log(JsUser.greeting); //access function

// creating another fn
JsUser.greet2 = function(){
    console.log(`Hello dear ${this["full name"]}! `);
}

console.log(JsUser.greet2())