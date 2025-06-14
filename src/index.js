const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Node Boilerplate App is running!');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

