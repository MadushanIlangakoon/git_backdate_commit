const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});

//test 01 commit in 2023 /01/01
//test 02 commit in 2022 /01/01
//test 03 commit in 2022 /01/01
