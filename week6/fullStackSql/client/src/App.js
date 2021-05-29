import React from 'react'
import axios from 'axios'
function App() {
  function getAllData(){
    axios.get('/data')
    .then(res => {
      mapItToLi(res.data)
      console.log(res.data)
    })
  }
  function mapItToLi(arr){
    arr.map(item => {
      let x = document.getElementById("App")
      let y = document.createElement('h3')
      y.innerHTML = `Avenger: ${item.name}`
      x.append(y)
    })
  }
  return (
    <div id="App">
      <h2>Press this button to interact with the SQL Database and see all the information inside of it.</h2>
      <button onClick={getAllData}>Interact</button>
    </div>
  );
}
export default App;