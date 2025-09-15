const promiceFive = new Promise( (resolve, reject)=>{
    setTimeout(() => {
        let error = false;
        if(!error){
            resolve({'name': 'Raj Kumar', 'like': "Readme.md"})
        }else{
            reject("This is rejected now")
        }
    }, 1000);
} )

// async function ConsumePromice() {
//     try{
//         const response = await(promiceFive)     //prmice-->object & await waits for it to execute. {so dont use ()}
//         console.log(response);
//     }
//     catch(error){
//         console.log("happened again error")
//     }
// }
// ConsumePromice()



// USING .THEN() OR catch() 
fetch()