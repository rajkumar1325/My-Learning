# UseReference

### useRef
- used to access the content directly from DOM
- it doesnt re-render the whole page.

##### Accessing the element from the input tag.
```
import { useRef } from "react";
function App(){
  const inputTextRef = useRef(null); //it gives an object { current: null }

//inputRef.current --> points to the entire DOM element, not its value.
//<input> has many properties — like .value, .type, .placeholder, .checked, etc...
  const handleClick = ()=>{
    alert("Accessed: " + inputTextRef.current.value); //note : alert only accept 1 argument
  }

  return(
    <>
      <h1>Heading</h1>
      <input ref={inputTextRef} type="text" placeholder="Type Here"/> 
      <button onClick={handleClick} >ClickME</button>
    </>
  )
}

export default App;
```
