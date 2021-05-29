import React from "react";
import axios from "axios"

export default function Characters() {
  function getAllData() {
    axios.get("/data").then((res) => {
      mapItToLi(res.data);
      console.log(res.data);
    });
  }
  function mapItToLi(arr) {
    arr.map((avenger) => {
      let x = document.getElementById("Chars");

      let t = document.createElement("h4");
      t.className = "years";
      t.innerHTML = `Years as an Avenger: ${avenger.yearsSinceJoining}`;

      let v = document.createElement("h4");
      v.className = "gender";
      v.innerHTML = `Avenger Gender: ${avenger.gender}`;

      let w = document.createElement("h4");
      w.className = "appearances";
      w.innerHTML = `Comic Appearances: ${avenger.appearances}`;

      let y = document.createElement("h3");
      y.className = "name";
      y.innerHTML = `Avenger Name: ${avenger.name}`;

      x.append(y, w, v, t);
    });
  }
  return (
    <div id="Chars">
      <h1 className="header">Characters</h1>
      <button onClick={getAllData} className="Interact">
        Get Avengers
      </button>
    </div>
  );
}
