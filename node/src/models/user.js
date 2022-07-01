const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../db')

const User = sequelize.define('users', {
    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    idade: {
        type: DataTypes.NUMBER
    },
    uf: {
        type: DataTypes.STRING
    },
    cidade: {
        type: DataTypes.STRING
    }
}, {
    tableName: "users",
    timestamps: false
});

module.exports = User
