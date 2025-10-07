# Object Method

### src/components/Cards.jsx
```
<!-- //Access using dot operator -->
function Cars(props){ //props is an parameter 
    return (
        <>
        <h3>This is Raj Kumar</h3>  
        <h4>The name is {props.name}</h4>
        <h4>The class is {props.roll}</h4>
        </>
    )
}

export default Cars;
```


### src/App.jsx
```
import Cars from "./components/Cards";
function App() {
  
  return (
    <>
    <h1>This is the one</h1>
    <Cars name="Raj Kumar" roll='seventh'/>
    </>
      
  )
}

export default App;


```

~




# DeStructure Method
### src/components/Cards.jsx
```
<!-- //Access directly using JS -->
function Cars({name, roll}){
    return (
        <>
        <h3>This is Raj Kumar</h3>  
        <h4>The name is {name}</h4>
        <h4>The class is {roll}</h4>
        </>
    )
}

export default Cars;
```


### src/App.jsx
```
import Cars from "./components/Cards";
function App() {
  
  return (
    <>
    <h1>This is the one</h1>
    <Cars name="Raj Kumar" roll='seventh'/>
    </>
      
  )
}

export default App;


```