var mongoose = require("mongoose");
var Schema = mongoose.Schema;

var recipeSchema = new Schema({
  title: String,
  instructions: [String],
  ingredients: [String],
});

var sproutSchema = new Schema({
  id: String,
  name: String,
  nomenclature: String,
  description: String,
  //recipes: [recipeSchema],
  date: String,
});

const Data = mongoose.model("Data", sproutSchema);

module.exports = Data;
