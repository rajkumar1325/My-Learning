const myArray = ["Raj", 1, 2, 3, 4, 5, true, 6]
// console.log(myArray[0])
// console.log(typeof(myArray)) //object

// const myArray2 = new Array("Raj", 1, 2, 3, 4, 5, true, 6)
// console.log(myArray[0])
// console.log(typeof(myArray2)) //object

myArray.push(100) //inserts at the end of the array
console.log(myArray)

myArray.pop() //removes the last element from the array
console.log(myArray)

myArray.unshift(1000) //inserts at the starting of the array
console.log(myArray)


myArray.shift() //removes the element from the starting
console.log(myArray)

console.log(myArray.includes(5)) //returns boolean {true, as it includes}

console.log(myArray.indexOf(5)) //finding the index values of within the arrays
console.log(myArray.indexOf(500)) //-1,  as not found


console.log("\n\n")

array11 = [1,2,3,4]
array12 = [6,7,8,9]
newArray = array11 + array12 //it joins both and returns a string
console.log(newArray)
console.log(typeof(newArray))




console.log("\n\n")

console.log("^^^^^^^^^^^ SLICE vs SPLICE *****************")
const myArr = [0,1,2,3,4,5]

console.log("A ", myArr)

console.log(myArr.slice(1,3)) //goes through 1,2 as 3-excluded {Create shallow copy}
console.log(myArr.splice(1,3)) //goes through 1,2 as 3-included {modifies original copy}
