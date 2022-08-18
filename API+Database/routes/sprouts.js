const express = require("express");
const router = express.Router();
const Sprout = require("../models/sproutSchema");

// http://localhost:8081/sprouts
// GET BACK ALL THE SPROUTS
router.get("/", async (req, res) => {
  try {
    const sprouts = await Sprout.find();
    res.json(sprouts);
  } catch (error) {
    res.json({ message: error });
  }
});

// ADD A SPROUT
router.post("/", async (req, res) => {
  const sprout = new Sprout({
    name: req.body.name,
    nomenclature: req.body.nomenclature,
    description: req.body.description,
    recipes: req.body.recipes,
    date: req.body.date,
  });

  try {
    const savedSprout = await sprout.save();
    res.json(savedSprout);
  } catch (error) {
    res.json({ message: error });
  }
});

// DELETE A SPROUT
router.delete("/:sproutId", async (req, res) => {
  try {
    const deletedSprout = await Sprout.deleteOne({ _id: req.params.sproutId });
    res.json(deletedSprout);
  } catch (error) {
    res.json({ message: error });
  }
});

// UPDATE A SPROUT
router.patch("/:sproutId", async (req, res) => {
  try {
    const updatedSprout = await Sprout.updateOne(
      { _id: req.params.sproutId },
      {
        $set: {
          name: req.body.name,
          nomenclature: req.body.nomenclature,
          description: req.body.description,
          recipes: req.body.recipes,
          date: req.body.date,
        },
      }
    );
    res.json(updatedSprout);
  } catch (error) {
    res.json({ message: error });
  }
});

module.exports = router;
