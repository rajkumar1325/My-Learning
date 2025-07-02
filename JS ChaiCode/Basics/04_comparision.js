console.log(2 > 1)

// IT's UNPREDICTABLE
console.log("2" > 1) //automatically 2 is converted into decimal
console.log(typeof("2">1)) //boolean

console.log() //space

// equality check (== ) and comparision operator(>  <   >= ...) works differently
// comparision convert NULL to a number, treating it as 0

console.log(null > 0) //F
console.log(null < 0) //F
console.log(null != 0) //T
console.log(null == 0) //F
console.log(null >= 0) //T


// SAME WORKS ON UNDEFINED TOO...
console.log();
console.log(undefined > 0) //F
console.log(undefined < 0) //F 
console.log(undefined != 0) //T
console.log(undefined == 0) //F


console.log();

console.log("2" == 2)
console.log("2" === 2)
