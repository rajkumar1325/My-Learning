import { useState } from "react"
function App() {
  let [counter, setCounter] = useState(0)
  // useState is a hook that gives 2 values : `variable` and a `function` to set variable
  // we have to store using destructuring method of Array
  
  
  const addVal = ()=>{
    // alert("Typed again")
    setCounter(counter+1)
  }

  const removeVal = ()=>{
    setCounter(counter-1)
  }


  return (
    <>
    <h1>This project is developed by Raj Kumar</h1>
    <h3>The number is {counter}</h3>

    <button onClick={addVal}>Add me</button>
    <button onClick={removeVal} disabled={counter===0}>Remove me</button>

    </>
  )
}
export default App;