const Sequelize = require("sequelize");
const dotenv = require("dotenv/config.js");
const path = require('path')

const dbName = process.env.DB_NAME;
const dbUser = process.env.DB_USER;
const dbHost = process.env.DB_HOST;
const dbPort = process.env.DB_PORT
const dbPath = path.join(__dirname, '..', '..', 'rails', 'dialog-rails.sqlite3')

const sequelize = new Sequelize(dbName, dbUser, null, {
    //passar os dados para o sequelize
    dialect: "sqlite",
    storage: path.join(dbPath),
    database: path.join(dbPath),
    host: dbHost,
    port: dbPort,
});

sequelize.authenticate().then((resp) => {
    console.log('Conectado')
})

module.exports = sequelize