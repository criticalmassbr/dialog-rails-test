const express = require('express');
const cors = require('cors');
// const bodyParser = require('body-parser');

const dotenv = require('dotenv');
dotenv.config();

const originHostname = process.env.ORIGIN_HOSTNAME;
const originPort = process.env.ORIGIN_PORT;

const usersRouter = require('./app/routes/users.routes');

const app = express();
const hostname = 'localhost';
const port = 3001;
// const db = require('./app/models');

app.use(cors({origin: `http://${originHostname}:${originPort}`}));

app.use(express.json());

app.use('/api/users', usersRouter);

app.listen(port, hostname, function() {
  console.log(`Server running at http://${hostname}:${port}/`);
});