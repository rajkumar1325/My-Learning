let name = "Raj Kumar"
let age = 34
let bio = "student"

// BASIC METHOD
// console.log(name + age + bio)

// STRING INTERPOLATION {use back-ticks}
console.log(`This is ${name} and age is ${age} with Bio ${bio}`)


// CREATING STRING USING CONSTRUCTOR {creating a string object}
const name2 = new String ("Raj Kumar")
console.log(name2)


// note: string always stores in kty-values pair 
// eg: Raj      0-->R  1--> a  2-->j

console.log(name2.toUpperCase())


console.log(typeof(name2)) //object {not key-value}


console.log(name2.__proto__) //It prints all the functions {inside the console, not in the terminal}

console.log("\n\n")

// FUNCTIONS OF STRINGS
let gameName ='  Raj Kumar'
console.log(gameName)

console.log(gameName.length) //length is a property not fn

console.log(gameName.trim()) //removes trailing and starting blank-spaces
console.log(gameName.slice(0,4))
console.log(gameName.slice(-2,4))
console.log(`substring is ${gameName.substring(0,6)}`) //0th indx to 5
console.log(`opposite is ${gameName.substring(-2,3)}`) //It neglets -ve and make it 0 {so 0th indx to 3}


console.log("\n************ SLICING **********");

let delta = "Rashmi Kaushik"
console.log(delta.slice(0,5)) //0th to 4th indx

// if start <end indx --> it returns null or 0
console.log(delta.slice(-5,15)) //starts from 12th index {as total 14}





