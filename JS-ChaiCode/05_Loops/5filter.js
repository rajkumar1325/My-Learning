const num = [1,3,4,5,56,67,8]

console.log(num.filter( (num) => num>6)) //as it returns, we can orint it according to the condition 

const newNum = num.filter( (n) => {
    return n>34 //explicit return, as we use braces --> have to use return statement
} )
console.log(newNum)



// same thing USING FOR-EACH 
const newOne = []
num.forEach( (n) => {
    if(n>6){
        newOne.push(n)
    }
} )

console.log(newOne)