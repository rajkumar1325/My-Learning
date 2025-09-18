import { useState } from 'react'
import './index.css';
import './App.css'

function App() {
  const [color, setColor] = useState('olive')

  return (
    <>
      <div className="w-full h-screen duration-200 mt-0 pt-0"
        style={{ backgroundColor: color }}
      >

        <div className="fixed flex flex-wrap justify-center bottom-12 inset-x-0 bg-red-400 px-10 py-12 gap-6.5" >

          <div className="fixed flex flex-wrap justify-center gap-3 shadow-2xl px-13 py-12 m-12 rounded-3xl"></div>


          <button onClick={()=> setColor('red')}
          className="outline-none px-14 py-21 rounded-full m-12 p-12 text-white shadow-lg "
            style={{ backgroundColor: 'red' }}
          >
            Red
          </button>

          <button onClick={()=>setColor('green')} 
          className="outline-none px-4 py-1 rounded-full text-white shadow-lg"
            style={{ backgroundColor: 'green'}}
          >
            Green
          </button>

          <button onClick={()=>setColor('orange')}
          className="outline-none px-4 py-1 rounded-full text-white shadow-lg"
            style={{ backgroundColor: 'orange' }}
          >
            Orange
          </button>

          <button onClick={()=> setColor('blue')}
          className="outline-none px-4 py-1 rounded-full text-white shadow-lg"
            style={{ backgroundColor: 'blue' }}
          >
            Blue
          </button>

          <button onClick={()=>setColor('purple')}
          className="outline-none px-4 py-1 rounded-full text-white shadow-lg"
            style={{ backgroundColor: 'purple' }}
          >
            Purple
          </button>


        </div>

      </div>

    </>
  )
}

export default App
