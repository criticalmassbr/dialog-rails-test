const db = require("../models");
const User = db.users;

exports.findAll = async (req, res) => {
  try {
    const data = await User.findAll()
    res.send(data)
    console.log(data)
  } catch (error) {
      console.error('error listing users: ', error)
  }
}
