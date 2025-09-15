const promiceFive = new Promise( (resolve, reject)=>{
    setTimeout(() => {
        let error = true;
        if(!error){
            resolve({'name': 'Raj Kumar', 'like': "Readme.md"})
        }else{
            reject("This is rejected now")
        }
    }, 1000);
} )

async function ConsumePromice() {
    try{
        const response = await(promiceFive)
        console.log(response);
    }
    catch(error){
        console.log("happened again error")
    }
}