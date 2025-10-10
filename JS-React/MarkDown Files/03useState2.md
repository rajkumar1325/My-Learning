#### App.jsx

```
import React, { useState } from "react";

function App() {
  const [count, setCount] = useState(5);
  const user = "Coding user"
  const [name, setName] = useState(user);

  return (
    <>
      <h1>This is Raj Kumar</h1>
      <button onClick={() => setCount(count + 1)}>Increase Count</button>
      <button onClick={() => setName("Raj Kumar")}>Set Name</button>

      <h4>Name: {name}</h4>
      <h4>Count: {count}</h4>

      {/* reset */}
      <button onClick={()=>setName(user)} > Reset</button>
      
    </>
  );
}

export default App;

```