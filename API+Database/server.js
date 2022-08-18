const express = require("express");
const app = express();
const mongoose = require("mongoose");
const bodyParser = require("body-parser");

app.use(bodyParser.json());

// Server
var server = app.listen(8081, () => {
  console.log("Server is running!");
});

// DB
// brew services start mongodb-community@6.0 -> in terminal
// brew services stop mongodb-community@6.0 -> in terminal
mongoose.connect("mongodb://localhost/newDB");

mongoose.connection
  .once("open", () => {
    console.log("Connected to DB");
  })
  .on("error", (error) => {
    console.log("Failed to connect " + error);
  });

// Import Routes
const sproutsRoute = require("./routes/sprouts");

app.use("/sprouts", sproutsRoute);
