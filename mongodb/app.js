const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const cors = require('cors');
const mongoose = require('mongoose');
mongoose.Promise = require('bluebird');
const config = require('./config/database');

// Connect to Database
mongoose.connect(config.database, {});

// On Connection
mongoose.connection.on('connected', () => {
    console.log('Connected to the Database' + config.database);
});

// On Error
mongoose.connection.on('error', (err) => {
    console.log('Database Error: ' + err);
});

const app = express();

// Routes
const User = require('./routes/User.route');

// Port Number
const port = 3000;

// CORS Middleware
app.use(cors());

// Set Static Folder
app.use(express.static(path.join(__dirname, 'public')));

// Body Parser Middleware
app.use(bodyParser.json());

app.use('/Users', User);

// Index Route
app.get('/', (req, res) => {
    res.send('Invalid Endpoint');
});

// Start Server
app.listen(port, () => {
    console.log("===============================================");
    console.log("App started on port " + port);
});