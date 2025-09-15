// fetch is an object, that returns promice 
// it takes time, so I have to wait (use await)
// then response is hold inside a variable
// parse the string into JSON

async function users() {
    const response = await fetch('https://api.github.com/users/hiteshchoudhary');
    const data = response.json();
    console.log(data)

}