const express = require('express')
const router = express.Router()

const User = require('../models/user');

router.get('/', async function (req, res) {
    res.send("Bem vindo a dialog API!")
})

router.get('/user/:page', async function (req, res) {
    // res.send(User.getTableName())

    User.findAndCountAll({
        limit: 25,
        offset: (req.params.page - 1) * 25,
        order: ['id']
    }).then(function (result) {
        res.json(result);
    });
})

router.get('/user_sync', async function (req, res) {
    const resp = await User.sync({ force: true })
    console.log(resp)
    res.send(resp.toString())
})

module.exports = router