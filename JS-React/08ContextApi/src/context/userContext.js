import React, { useContext } from "react";

const userContext = React.createContext(); //creating a variable

export default userContext; //just through it / return it

<userContext>
    <Login/>
    <Card/>
</userContext>