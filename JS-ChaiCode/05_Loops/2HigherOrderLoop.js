const newArr1 = [1,2,43,45,56,7];
for (const num of newArr1) {
    console.log(num);
}

let greet = "Hello dear";
for (const char of greet) {
    console.log(char)
}





//MAPS
const map = new Map();
map.set("a",199);
map.set("b",34)
map.set("c",14)

console.log(map.get("a"))
console.log(`Map size is ${map.size}`)  //size is property not function here.
console.log(`Keys are: ${map.keys}`)

// Check key
console.log(map.has("d"));  // false


// Printing output
for (const [key,value] of map) {
    console.log(key , "--> ", value)
}



