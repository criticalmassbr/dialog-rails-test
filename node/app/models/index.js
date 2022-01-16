const config = require("../config/config.js");
const Sequelize = require("sequelize");
const sequelize = new Sequelize(config.DATABASE_URL, {
  logging: false
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.User = require("./user.model.js")(sequelize, Sequelize);

module.exports = db;
