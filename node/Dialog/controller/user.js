const model = require('../models');
const user = model.user;

module.exports = {
  async index(request, response) {
    try {
      const { page } = request.params;
      const limite = 25;

      const User = await user.findAndCountAll({
        order: [
          ['id', 'ASC']
        ],

        limit: parseInt(limite),
        offset: parseInt(page) * parseInt(limite) 
      })

      return response.status(200).json(User);

    } catch (err) {
      return response.status(400).json("Erro ao listar usuários" + err);
    }
  }
}
