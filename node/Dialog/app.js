const express = require('express');
const app = express();
const port = 8080;
const userRouter = require('./router/user_router');

app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(userRouter);

app.listen(port, function (request, response) {
    console.log(`Servidor rodando na porta ${port}`);
});
