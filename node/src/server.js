const express = require("express");
const cors = require("cors");
const routes = require('./routes');

const app = express();
const PORT = 8000;

app.use(express.json());
app.use('/api', routes);
app.use(cors());

app.listen(PORT, () => console.log(`Servidor executando na porta ${PORT}...`));
