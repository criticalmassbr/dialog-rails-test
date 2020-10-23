const express = require("express");
const fetch = require("node-fetch");

// config app
const app = express();
app.use("/", express.static('./views/'));

// routes
app.get("/", (req, res) => {
  res.sendFile(__dirname + "/views/index.html")
});

// start server
const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
  console.log(`server running on port: ${PORT}`);
});