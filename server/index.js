const express = require('express');
const mongoose = require('mongoose');

const authRouter = require('./routes/auth');

const PORT = 3000;
const app = express();
const DB = "mongodb+srv://fachrul:Arul2009@cluster0.5nk8kej.mongodb.net/?retryWrites=true&w=majority";

// middleware
app.use(authRouter);

mongoose.connect(DB).then(() => {
    console.log('Connection Succesful');
}).catch(e => {
    console.log(e);
});

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Connected at Port ${PORT}`);
});