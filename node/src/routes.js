const express = require('express');
const controllers=require('./controllers');

const router = express.Router();

router.get('/users', controllers.getUsers)

module.exports = router;