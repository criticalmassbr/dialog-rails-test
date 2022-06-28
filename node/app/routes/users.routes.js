const express = require("express");
const users = require("../controllers/users.controller.js");

const router = express.Router();

router.get("/", users.findAll);

module.exports = router;