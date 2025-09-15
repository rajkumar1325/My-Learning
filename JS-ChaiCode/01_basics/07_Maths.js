// It is inbuilt library into JS
console.log(Math) //use this onto console to print most of the output, as there many suggestions are given

console.log(Math.abs(-9)) //9
console.log(Math.round(4.56)) //5
console.log(Math.ceil(4.56)) //5
console.log(Math.floor(4.56)) //4

console.log(Math.min(12,45,23,6,3)) //3

console.log("\n")
// RANDOM VARIABLE
let min = 10;
let max = 20;

// console.log(Math.random(min,max))

console.log( Math.floor(Math.random(min,max)*10)) 
console.log( Math.floor(Math.random(min,max)*10) + max-min+1)  //always give result > 10 and < 20
