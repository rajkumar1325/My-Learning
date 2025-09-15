//writing multiple statement inside without braces {}
if(2=='2') console.log("test1"), console.log("test2")      // dont use, as its unreadable


// SWITCH
const month = 34; //month --> variable 

switch(month){ //key 
    case 23: //if key--> value == 23 --> put inside this case   
        console.log("23 is the one")
        break;
    case 34:
        console.log("34 is the result")
        break;
    default:
        console.log("No result matched")
        break;
    
}
