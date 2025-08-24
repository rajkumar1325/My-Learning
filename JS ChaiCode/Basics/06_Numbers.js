const number = 500
console.log(number)

//DEFINING A NEW OBJECT THAT IS OF TYPE NUMBER
const balance = new Number //it clearnly defines it must be a number
console.log(balance)

num = balance.toString()
console.log(typeof(num)) //string


num2 = 43.945
console.log(num2.toFixed(2)) //gives precision vales upto given argument

console.log(num2.toPrecision(3)) //It returns string as a round figure


const hundreds = 1000000
console.log(hundreds.toLocaleString()) //adds commas so to view easily
console.log(hundreds.toLocaleString('en-IN')) //converting into indian-values / number-system

