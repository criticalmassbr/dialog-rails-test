const db = require("../models");
const User = db.User;
const Op = db.Sequelize.Op;

const getPagination = (page, size) => {
  const limit = size ? +size : 25;
  const offset = page ? page * limit : 0;

  return { limit, offset };
};

const getData = (data, page, limit) => {
  const { count: items, rows: users } = data;
  const currentPage = page ? +page : 0;
  const totalPages = Math.ceil(items / limit);

  return { items, users, totalPages, currentPage};
};

exports.findAll = (req, res) => {
  const { page, size } = req.query;
  const { limit, offset } = getPagination(page, size);

  User.findAndCountAll({ limit: limit, offset: offset })
    .then(data => {
      const response = getData(data, page, limit);
      res.send(response);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Erro."
      });
    });
};