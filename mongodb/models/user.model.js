const mongoose = require('mongoose');
mongoose.Promise = require('bluebird');
const config = require('../config/database');

// User Schema
const UserSchema = mongoose.Schema({
    RaterNumber: {
        type: Integer,
        required: true
    },
    ReteeNumber: {
        type: Integer,
        required: true
    },
    Rating: {
        type: Integer,
        required: true
    },
    TimeStamp: {
        type: Integer,
        required: true
    },
});

const User = module.exports = mongoose.model('User', UserSchema);

/**
 * Create a new User
 * 
 * @param {*} newUser New User object
 * @param {*} _callback 
 */
module.exports.createUser = function (_newUser, _callback) {
    _newUser.save(_callback);
};

/**
 * Get all Users
 * 
 * @param {*} _callback 
 */
module.exports.getUsers = function (_callback) {
    User.find(_callback);
};

/**
 * Get User by ID
 * 
 * @param {*} _id User ID 
 * @param {*} _callback 
 */
module.exports.getUserById = function (_id, _callback) {
    User.findById(_id, _callback);
};

/**
 * Get User by ID
 * 
 * @param {*} _UserNumber User Slug 
 * @param {*} _callback 
 */
module.exports.getUserByUserNumber = function (_UserNumber, _callback) {
    User.findOne({
        UserNumber: _UserNumber
    }, _callback);
};

/**
 * Delete User by User Number
 * 
 * @param {*} _UserNumber User ID
 * @param {*} _callback 
 */
module.exports.deleteUser = function (_UserNumber, _callback) {
    User.deleteOne({
        UserNumber: _UserNumber
    }, _callback);
};
