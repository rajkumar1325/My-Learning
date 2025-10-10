# Dark mode toggle
- give the style to all the element that you wnna use it.
- define the style
- make a toggler
- activate the toggler on event{onClick etc..} 

```
import React from 'react'
import { useState } from 'react'
export default function Darkmode() {

    const [MyStyle, setMyStyle] = useState({
        color: 'white',
        backgroundColor: 'black'
        
    })

      const [btnText, setBtnText] = useState("Enable Light Mode");


    const toggleBtn = ()=>{
        // Black-mode
        if(MyStyle.color=== 'white'){
            setMyStyle({
                color: 'black',
                backgroundColor: 'white',
                
            })
            setBtnText("Enable Dark Mode")
        }

        // white-Mode
        else if(MyStyle.color=== 'black'){
            setMyStyle({
                color: 'white',
                backgroundColor: 'black'
            })
            setBtnText("Enable Light Mode")
        }
        
    }

  return (
    <>
    <h1 style={MyStyle} >Heading 1</h1>

    <h2 style={MyStyle}>This is my heading</h2>

    <h4 style={MyStyle}>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate unde aliquid commodi id itaque nihil aspernatur velit officiis laboriosam ad, consectetur doloremque inventore reprehenderit voluptatibus enim ab tempora soluta. Rerum!</h4>

    <h5 style={MyStyle}>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea quod error odio perspiciatis veniam libero excepturi ullam rerum sequi dolorum odit, in labore.</h5>

{/* edit dynamically */}
    <button onClick={toggleBtn}>{btnText}</button>
    </>
  )
}


```
<img width="1920" height="559" alt="image" src="https://github.com/user-attachments/assets/609fb213-684a-4d06-9f4b-66ec02082d7b" />
<img width="1920" height="606" alt="image" src="https://github.com/user-attachments/assets/f28be7ff-06df-4bd2-ab53-e095157ab7ac" />


