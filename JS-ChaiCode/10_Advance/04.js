// fetch is an object, that returns promice 
// it takes time, so I have to wait (use await)
// then response is hold inside a variable
// parse the string into JSON



// async function users() {
//     try {
//         const response = await fetch('https://api.github.com/users/hiteshchoudhary');
//         // console.log(response)
//         const data = await response.json();     //response.json() --> also takes time, so I have to await
//         console.log(data)
//     }
//     catch (error) {
//         console.log(error)
//     }
// }
// users()





//      SAME USING .then() or .catch()
fetch('https://api.github.com/users/hiteshchoudhary')
.then((response)=> {return response.json})
.then((nestedResp) => console.log(nestedResp))
.catch((error)=> console.log(error))