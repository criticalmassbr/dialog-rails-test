const express = require('express');
const controllers=require('./app/controllers/usersController');

const router = express.Router();

router.get('/users', controllers.getUsers)

module.exports = router;