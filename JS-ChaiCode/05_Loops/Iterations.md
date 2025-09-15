## for-loop

for (let index = 0; index < array.length; index++) {
    const element = array[index];
    
}


## while loop

while(condition){
    //code
}



## do-while
do {
    //code
} while (condition);






# Higher Order Loop
<!-- forof  -->   
- // Iterate over mainly Array/List and Object

for (const element of object) {
    console.log(element) 
}


<!-- MAPS -->
- maps are always unique and ordered
- but map are not iterable just like array
- maps are iterable using `forin`


<!-- object -->
- object are not iterable using forin (just like map)
- These are iterable using `forof`


# forin vs forof
- in Array :: `forof` simply prints like `console.log(num)`
- in Array :: `forin` we have to specify like array printing `console.log(arr[num])`


# forEach
- it contains a call-back function

#### callback fn 
: simple fn :       function name() {}
: callback fn :       function () {}


# filter
- returns in true/false
- It also contains a callback function
- it returns values but for-each doesnt.
- under the callback function, it contains a condition --> true = returns `ans` else return empty `[]`

# map
- it also contain call-back function
- it automatically returns values


# reduce
- mainly used as a calculator
- have `initial-value(accumulator)` and `current-value`
