const nums = [1,2,3,4,5,6,7,8,9]

// add each element by 10
const new1 = nums.map( (n) => n+10 )
// console.log(new1)




// CHAINING --> call under call 
const newOne = nums
                .map( (n)=> n*10 )  //each number multiplied by 10
                .map( (m) => m+1)  //multiplied number is then added with 1
                .filter( (n)=> n>40) //prints only >40 numbers

console.log(newOne)