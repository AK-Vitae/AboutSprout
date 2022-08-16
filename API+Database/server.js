const express = require("express");
const mongoose = require("mongoose");
var app = express();
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
    id: request.get("id"),
    name: request.get("name"),
    nomenclature: request.get("nomenclature"),
    description: request.get("description"),
    //recipes: request.get("recipes"),
    date: request.get("date"),
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
