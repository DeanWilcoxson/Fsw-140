import React from "react";
import "./styles.css";
import Navbar from "./components/navbar";
import Home from "./components/Home";
import Characters from "./components/Chars";
import { Switch, Route } from "react-router-dom";

function App() {
  return (
    <div>
      <Navbar />
      <Switch>
        <Route exact path="/">
          <Home />
        </Route>
        <Route exact path="/chars">
          <Characters />
        </Route>
      </Switch>
    </div>
  );
}
export default App;
