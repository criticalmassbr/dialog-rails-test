module.exports = (sequelize, Sequelize) => {
  const User = sequelize.define("User", {
    nome: {
      type: Sequelize.STRING
    },
    idade: {
      type: Sequelize.INTEGER
    },
    sexo: {
      type: Sequelize.STRING
    },
    cidade: {
      type: Sequelize.STRING
    },
    uf: {
      type: Sequelize.INTEGER
    },
    created_at: {
      type: Sequelize.DATE
    },
    updated_at: {
      type: Sequelize.DATE
    }
  });

  return User;
};