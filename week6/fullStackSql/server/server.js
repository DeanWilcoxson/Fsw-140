const express = require("express");
const app = express();
const morgan = require("morgan");
const mysql = require("mysql");

const db = mysql.createConnection({
  host: "localhost",
//   port: "3306",
  user: "root",
  password: "Hollysaige",
  database: "avengers",
});

app.use(express.json());
app.use(morgan("dev"));

db.connect((err) => {
  if (err) throw err;
  console.log("MySql DB Connected.");
});
app.use('/', require('./routes/router'))
// app.get("/createdb", (req, res) => {
//   let sql = "CREATE DATABASE data";
//   db.query(sql, (err, result) => {
//     if (err) throw err;
//     console.log(result);
//     res.status(200).send(result);
//   });
// });

app.listen(9000, () => {
  console.log("Server is running on LocalHost:9000");
});
 