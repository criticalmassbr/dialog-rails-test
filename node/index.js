const express = require("express")

const app = express()

const db = require('./src/db')
const port = 3005

// Routes
const user = require('./src/controller/user')
app.use(user)


app.listen(port, () => {
    console.log('Escutando na porta ' + port);
    db.sync(() => console.log(`Banco de dados conectado: ${process.env.DB_NAME}`));
})
