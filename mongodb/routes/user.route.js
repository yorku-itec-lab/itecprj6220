const express = require('express');
const router = express.Router();
const config = require('../config/database');
const User = require('../models/User.model');
const Promise = require('bluebird');

/**
 * Create User
 */
router.post('/', (req, res) => {

    // Build User Object
    let newUser = new User({
        ReaterNumber: req.body.UserNumber,
        ReteeNumber: req.body.name,
        Reating: req.body.program,
        TimeStamp: req.body.year,
    });

    User.createUser(newUser, (err, User) => {
        if (err) {
            res.json({
                success: false,
                message: "Failed to create User",
                error: err
            });
        } else {
            res.json({
                success: true,
                message: "User Created.",
                User: User
            });
        }
    });



});

/**
 * Get User by User Number
 */
router.get('/:UserNumber', (req, res) => {
    User.getUserByUserNumber(req.params.UserNumber, (err, User) => {
        if (err) {
            res.json({
                success: false,
                message: "Failed to get User",
                error: err
            });
        } else {
            res.json({
                success: true,
                message: "User Created.",
                User: User
            });
        }
    });
});

/**
 * Get All User
 */
router.get('/', (req, res) => {
    User.getUsers((err, Users) => {
        if (err) {
            res.json({
                success: false,
                message: "Failed to get Users",
                error: err
            });
        } else {
            res.json({
                success: true,
                Users: Users
            });
        }
    });
});

/**
 * Get User by User Number
 */
router.get('/delete/:UserNumber', (req, res) => {
    User.deleteUser(req.params.UserNumber, (err, User) => {
        if (err) {
            res.json({
                success: false,
                message: "Failed to delete User",
                error: err
            });
        } else {
            res.json({
                success: true,
                message: "User Deleted.",
            });
        }
    });
});

module.exports = router;