function one(){
    const username = "Raj Kumar"

    const website = "Google"
    function two(){
        const website = "youtube"
        console.log(`Function two : ${username}`)
    }
    console.log(website)

    two() //fn call
}

one() //fn call



// **********************************HOISTING****************************
console.log("\n\n");




console.log(`First fnction : ${fun1(5)}`)
function fun1(val){
    return val+2;
}




console.log(`2nd function : ${fun(5)}`) //cant be able to access before initialisation {HOISTING}

const fun = function(val){ // new way to create a function
    return val+1;
}