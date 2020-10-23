const dbConfig = require("../config/db.config.js");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  host: dbConfig.HOST,
  dialect: dbConfig.dialect,
  operatorsAliases: 0,
  define: { timestamps: false }
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.users = require("./user.model.js")(sequelize, Sequelize);

// test connection
sequelize
  .authenticate()
  .then(() => {
    console.log('connection has been established successfully.');
  })
  .catch(err => {
    console.error('unable to connect to the database:', err);
  });

module.exports = db;
