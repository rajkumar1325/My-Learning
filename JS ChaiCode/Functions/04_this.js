// this : refers to the current context
const user = {
    username : "Hitesh",
    price : 999,

    WelcomeMessage: function(){ //function declaration
        console.log(`${this.username} , is the username`)
        // console.log(this) //prints the current context
    }
}

user.WelcomeMessage();

user.username = "Raj Kumar" //here we change the context/values
user.WelcomeMessage();

console.log(`This is the this \n ${this}`) //this becomes a stringified version of {} → i.e., "[object Object]"
console.log(this) // {}   : blank object




// *************************************ARROW FUNCTIONS
console.log("\n\n")


function fun11(){
    let usernameing = "suresh";
    // console.log(this);
    console.log(this.usernameing) //cant be able to print like this, as It is not under object
}




const funnn = () => {
    let usernameing = "suresh";
    // console.log(this);
    console.log(this.usernameing) //cant be able to print like this, as It is not under object
}

fun11()
funnn()