#### accordian.jsx
- use single braces when we pass the style like object
- use double braces when we pass the style directly

```
export default function Accordian() {

    const hello_style = {
        color: 'blue',
        
    }

    return (
        <>
            {/* Direct Styling --> double braces used */}
            <div className="hello1" style={{ color: 'red' }}>
                <h2>This is my second heading</h2>
            </div>

            {/* Styling using object --> single braces used */}
            <div className="hello2" style={hello_style}>
                <h2>This is my second heading</h2>
            </div>


        </>
    )
}


<img width="1614" height="504" alt="image" src="https://github.com/user-attachments/assets/5aec185a-5ccf-4d0a-9752-e65b820cff00" />



```
