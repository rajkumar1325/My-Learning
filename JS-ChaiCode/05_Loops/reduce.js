const nums = [1,2,3,4,5,6,7,8,9,10]

//it contains 2 args : accumulator and current-value
//acuumulator : starting-value
const newNumber = nums.reduce( function (accum, currVal) {
    return accum + currVal
}, 11) //11 is accumulator

console.log(newNumber)



const newNumber1 = nums.reduce((acc, curr) => acc+curr, 0)