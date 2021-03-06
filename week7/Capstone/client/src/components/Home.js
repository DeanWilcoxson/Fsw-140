import React from "react";
import axios from "axios"
export default function Home() {
  function getAllData() {
    axios.get("/data").then((res) => {
      mapItToLi(res.data);
      console.log(res.data);
    });
  }
  function mapItToLi(arr) {
    arr.map((avenger) => {
      let x = document.getElementById("Avengers");
      let y = document.createElement("h3");
      y.className = "name";
      y.innerHTML = `Avenger Name: ${avenger.name}`;
      x.append(y);
    });
  }
  return (
    <div id="Avengers">
      <h1 className="header">Avengers</h1>
      <button onClick={getAllData} className="Interact">
        Get Avengers
      </button>
    </div>
  );
}
