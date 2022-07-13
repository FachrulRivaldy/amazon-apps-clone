const express = require('express');

const PORT = 3000;

const app = express();

//CREATE API

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Connected at Port ${PORT}`);
});