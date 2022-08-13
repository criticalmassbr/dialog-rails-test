require('dotenv').config()

const Sequelize = require("sequelize");

const sequelize = new Sequelize(process.env.DATABASE_NAME, process.env.DATABASE_USERNAME, process.env.DATABASE_PASSWORD, {
  dialect: "mysql",
  host: process.env.DATABASE_HOST,
  define: {
    timestamps: false,
  },
});

module.exports = sequelize;
