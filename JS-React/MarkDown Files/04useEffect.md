### App.jsx
###### whenever count variable changes, useEffect fn triggers
```
import { useEffect, useState } from "react";

function App(){
  const [count, setCount] = useState(0);

  useEffect( function(){
    const num = Math.floor(Math.random() * 10) + 1;
    // console.log(num);
    
    const h1 = document.createElement("h1");
    h1.textContent = num;
    document.body.appendChild(h1);
  }, [count] )
  return(

    <>
    <button onClick={()=> setCount(count+1)} >Set Me</button>
    </>
  )
}

export default App;
```