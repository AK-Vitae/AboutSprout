const express = require("express");
const mongoose = require("mongoose");
const bodyParser = require("body-parser");

const app = express();
app.use(bodyParser.json());

var Data = require("./sproutSchema");
mongoose.connect("mongodb://localhost/newDB");

mongoose.connection
  .once("open", () => {
    console.log("Connected to DB");
  })
  .on("error", (error) => {
    console.log("Failed to connect " + error);
  });

// CREATE A SPROUT
// POST request
app.post("/create", (request, response) => {
  var sprout = new Data({
    name: request.body.name,
    nomenclature: request.body.nomenclature,
    description: request.body.description,
    recipes: request.body.recipes,
    date: request.body.date,
  });

  sprout.save().then(() => {
    if (sprout.isNew == false) {
      console.log("Saved data!");
      response.send("Saved data!");
    } else {
      console.log("Failed to save data");
    }
  });
});

// http://192.168.68.129:8081/create
// brew services start mongodb-community@6.0 -> in terminal
// brew services stop mongodb-community@6.0 -> in terminal
var server = app.listen(8081, "192.168.68.129", () => {
  console.log("Server is running!");
});

// DELETE A SPROUT
// POST request

// UPDATE A SPROUT
// POST request

// FETCH ALL SPROUTS
// GET request
app.get("/fetch", (request, response) => {
  Data.find({}).then((DBItems) => {
    response.send(DBItems);
  });
});
