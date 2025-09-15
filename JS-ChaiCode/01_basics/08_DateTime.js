// Date is an object, works on millisec from Jan-1st-1970

let mydate = new Date() //gives current instance date
console.log(mydate)
console.log(typeof(mydate)) //object

console.log(mydate.toString()) //converts into readable format
console.log(mydate.toISOString())
console.log(mydate.toTimeString())



console.log("\n")

let dateCreated = new Date(2024, 0, 25) //month starts from 0
console.log(dateCreated.toDateString()) //jan-25-2024

let dateCreated2 = new Date(2025, 1, 20, 5, 4) //along with time {05:04:00}
console.log(dateCreated2.toLocaleString())

console.log()
let dateCreated3 = new Date("2024-02-01") // yyyy-mm-dd
let dateCreated4 = new Date("01-02-2024") // mm-dd-yyyy
console.log(dateCreated3.toLocaleString())
console.log(dateCreated4.toLocaleString())


// ***********************TIME STAMP**************************

console.log("\n Printing the values \n")

let myStamp = new Date("01-04-2025")

console.log(myStamp)
console.log(myStamp.getTime())
