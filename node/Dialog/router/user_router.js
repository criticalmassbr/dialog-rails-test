const express = require('express');
const router = express.Router();
const user = require('../controller/user');

//User Routes
router.get('/user/index/:page', user.index);

module.exports = router;
