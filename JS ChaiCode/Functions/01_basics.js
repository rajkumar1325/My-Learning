function addTwo(val1, val2){ //won't have to speify data-type
    let result = val1 + val2
    return result
}
console.log(addTwo(5,7)) //12

let ans = addTwo(2,6) 
console.log("Answer is : " ,ans) //8



console.log() //blank space

function addAnother(val1, val2){ //won't have to speify data-type
    console.log(val1 + val2) 
}

console.log(addAnother(5,6)) //11

let anotherans = addAnother(5,9) //14
console.log(anotherans) //undefined, as It doesn't specify return statement
