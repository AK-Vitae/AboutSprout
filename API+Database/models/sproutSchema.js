var mongoose = require("mongoose");
var Schema = mongoose.Schema;

var recipeSchema = new Schema({
  title: String,
  instructions: [String],
  ingredients: [String],
});

var sproutSchema = new Schema({
  name: String,
  nomenclature: String,
  description: String,
  recipes: [recipeSchema],
  date: String,
});

module.exports = mongoose.model("Sprout", sproutSchema);
