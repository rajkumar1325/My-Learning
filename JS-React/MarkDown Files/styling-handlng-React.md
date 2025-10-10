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



<img width="807" height="252" alt="Screenshot 2025-10-11 010303" src="https://github.com/user-attachments/assets/1462f7fa-0b31-4c0e-ac7f-04536e2435c3" />



```
