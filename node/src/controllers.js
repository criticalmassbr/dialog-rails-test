const User = require("./user");

exports.getUsers = (req, res) => {
  const page = +req.query.page | 1;
  const limit = 25;

  User.findAll({
    limit: limit,
    offset: (page - 1) * limit,
    order: [
      ['created_at', 'DESC']
    ]
  })
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      res.status(500).send({
        message:
          err.message ||
          "Algo de errado ocorreu.",
      });
    });
};
