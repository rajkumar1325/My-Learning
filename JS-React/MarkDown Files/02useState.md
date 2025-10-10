### App.jsx
```
  import { useState } from "react";
  function App() {
    // Note : destructured-variable must be declared under var/const/let keywords
    const [count, setCount] = useState(0);

    // declare function using function keyword.
    const handleIncrement =  function () {
      setCount(count + 1);
    }

    // declare fn using arrow function.
    const handleDecrement =  ()=> {
      setCount(count - 1);
    }

    return (
      <>
      <h2>hello</h2>
      <h1>count {count}</h1>
      <button onClick={handleIncrement}>clickUp</button>
      <button onClick={handleDecrement}>clickDown</button>
      </>

    )
  }

  export default App;


```
