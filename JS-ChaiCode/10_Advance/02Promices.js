// {  promice.then().catch().finally     --> resolve=then() , reject=catch() , all-time-run=finally }

// const PromiseOne = new Promise(function (resolve, reject) {
//     setTimeout(() => {
//         console.log("Async Task 1")
//         resolve() //binds the resolve directly to 'then'
//     }, 1000);
// })

// PromiseOne.then(function () {
//     console.log("Async One resovled")
// })






// // doing all these stuff inside a single one and also use arrow-fn
// new Promise((resolve, reject) => {
//     console.log("Async task 2")
//     resolve()
// }, 1000).then(() => console.log("Async task 2 resolved"))







// // new promice: passing data using resolve
// const PromiceThree = new Promise((resolve, reject) => {
//     setTimeout(() => {
//         resolve({ 'name': "Raj Kunar", 'number': 9525252725 })
//     }, 1000);
// })
// PromiceThree.then((data) => console.log(data))







// const PromiceFour = new Promise(function (resolve, reject) {
//     setTimeout(() => {
//         let error = true;
//         if (!error) {
//             resolve({ 'name': 'Kaushik', 'number': 123456 })
//         }
//         else {
//             reject("My data went wrong")
//         }
//     }, 1000);
// })
// PromiceFour.then(function (user) {
//     console.log(user)
// }).catch(function (msg) {
//     console.log(msg)
// })








// // AVOID CALL-BACK HELL --> NESTED THEN()
// // BY DESTRUCTURING
// const PromiceFive = new Promise((resolve, reject) => {
//     setTimeout(() => {
//         console.log("This is the one")
//         resolve({ 'class': 10, 'roll': 12345678 })
//     }, 2000);
// })
// PromiceFive.then((data) => console.log(data.class))






// WHAT IF WE WANT TO RETURN
const PromiceSix = new Promise((resolve, reject) => {
    setTimeout(() => {
        console.log("This is the one")
        resolve({ 'class': 10, 'roll': 12345678 })
    }, 2000);
})

// const newProm = PromiceSix.then((data) => {
//     // console.log(data)
//     return data.class
// } )
// console.log(newProm) //CANT RETURN LIKE THIS


// PERFORM CHAINING 
PromiceSix.then((data)=>{
    return data.class   //this returned data is passed into next 'then()'
}).then( (dataClass)=> console.log(dataClass) )