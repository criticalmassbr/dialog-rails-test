const db = require("../models");
const User = db.users;

exports.findAll = async (req, res) => {
  try {
    const data = await User.findAll()
    res.send(data)
  } catch (error) {
    console.error('error fetching users: ', error)
  }
}