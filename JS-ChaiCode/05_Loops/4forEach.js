// for-each receives a callback fn.
// callback fn : function passed as an argument to another function.  {function without name}

const coding = ["js", 'array', "coding", "ruby"]

// coding.forEach(function (val) {
//     console.log(val)
//     }
// )



// // using arrow function
// coding.forEach( (num) => {
//     console.log(num)
// } )



// // passing a defined fn 
// function printme(item){
//     console.log(item)
// }

// coding.forEach(printme) //dont use parenthesis, as we dont execute here, we just pass reference




// // foreach includes 3 arguments
// coding.forEach( (item, index, arr) =>{
//     console.log(item, index, arr)

// })






// Object under array

const arr11 = [
    {
        language: "js",
        languagefile: "newJS"

    },
    {
        language: "ruby",
        languagefile: "rubbies"

    },
    {
        language: "quora",
        languagefile: "queriesServices"

    },

]



arr11.forEach( (item)=>{
    console.log(item.language) //each iteration have item and its property is language
}

)