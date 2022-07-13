const express = require('express');

const authRouter = express.Router();

authRouter.post('/api/signup', (req, res) => {
    const {name, email, password} = req.body;
    // GET DATA FROM CLIENT
    // POST DATA IN DATABASE
    // RETURN DATA TO USER
});


module.exports = authRouter;