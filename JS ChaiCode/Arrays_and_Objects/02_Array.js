const Marvel = ["Iron man", "Spider Man", "Kill monger"]
const Dc = ["Super Man", "flash", "Batman"]

console.log(Marvel)

// Marvel.push(Dc) //element behave like a single element
const newHero = Marvel.concat(Dc)

console.log(newHero)

//  ************************** SPREAD OPERATOR *****************

console.log(...Marvel , ...Dc) //spreads all the element inside it into individual ones




//************8********** Converting multi-dimensional array into single/flat array *****************************
let arrays = [1,2,3, ["Raj", "Kumar", ["Sharma", "Kaushik", [100,340,400]]]]

console.log(arrays.flat(Infinity)) //handles all till infinity depth





// CRETING AN ARRAY
console.log("\n********CREATING ARRAY ***************")
console.log(Array.isArray("Rashmi"))
console.log(Array.from("Rashmi")) //creating an Array of Rashmi {R,a,s,h,m,i}



console.log("\n********CREATING ARRAY from multiple variables***************")
let score1 = 400
let score2 = 500
let score3 = 600
console.log(Array.of(score1,score2,score3)) //create a new array of all the elements
