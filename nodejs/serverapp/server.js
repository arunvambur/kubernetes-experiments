'use strict';
 
const express = require('express');
 
// Constants
const PORT = 8080;
//const HOST = '0.0.0.0'
// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello I am from Main');
});
 
app.listen(PORT, () => {
  console.log(`Running on ${PORT}`);
});