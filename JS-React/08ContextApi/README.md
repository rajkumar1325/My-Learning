create a 'context' folder under src
- then create a 'js' file not 'jsx' file.


Note: every context is a provider, so it acts as a wrapper.
So If I make a context, we have to make a provider too




```
import React, { useContext } from "react";
const userContext = React.createContext(); //creating a variable
export default userContext; //just through it / return it


<userContext>
    <Login/>
    <Card/>
</userContext>
```

if I wrap any element/jsx file inside the `userContext` variable,
All components under the tag have the access to the global variable(`userContext`).