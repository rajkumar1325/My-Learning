//We just assume that the value is true/false
const user = "Raj"
const user1 = "" //blank

if(user){ //assumed true as it contains element
    console.log("This is name:", user)
}


if(user1){ //assumed false 
    console.log("This false statement:")
}

console.log("Last statement")





// check array is empty or not!
const valueArr =[] //empty array
if(valueArr.length === 0){
    console.log('Array is empty')
}

// detect object is empty or not!
const obje = {}
if(Object.keys(obje).length ===0){     //Object.keys(obje) --> It returns an array
    console.log("Object is empty")
}