// method1(using Constructor) : {singleton object form}
const user = new Object()
console.log(user)

// method2 : non-singleton object formed
const user_1 = {}
console.log(user_1)


user.name = "Raj Kumar"
user.id = "23456"
user.email = "Rajkumar1234@gmail.com"

console.log(user)


// OBJECT UNDER OBJECT
console.log("\n *********************OBJECT under OBJECT*******************************")

const regUser ={
    name : "Raj",
    email : "Rajkumar@123.com",
    fullname : {
        userFullName : {
            firstName : "Raj",
            lastName : "Kumar"
        }
    }
}

// accessing object under object
// console.log(regUser)
console.log(regUser.fullname)
console.log(regUser.fullname.userFullName)
console.log(regUser.fullname.userFullName.firstName)





console.log("********** Concatinating")
const ob1 = { name: "Raj", age : 23}
const ob2 = { city : "noida", gender: "male"}

// console.log(ob1 +ob2) //can't able to concatinate


// const obj3 = {ob1 ,ob2} //not behave as expected {its like nested}
// console.log(obj3)

console.log()
const obj5 = Object.assign({} ,ob1, ob2) //both the object must have different attributes
console.log(obj5)



// Concatinating using spread operator
const object_6 = {...ob1, ...ob2}
console.log(object_6)



console.log("\n******************ACCESSING KEYS*******************")
console.log(Object.keys(object_6)) //returns all the keys inside the object and return it as a array
console.log(Object.values(object_6)) //returns all the vaues inside the object and return it as a array