// settimeout function go as call to webAPI --> taskQueue --> finally return to call-stack
// thats why : even timeout=0, it takes some time | it runs after next item

let a =10, b=2, c=45, d=100
console.log(a)

console.log(setTimeout(() => {
    console.log(b)
}, 0));


// console.log(setTimeout(() => {
    
// }, 1))

console.log(c)
console.log(d)