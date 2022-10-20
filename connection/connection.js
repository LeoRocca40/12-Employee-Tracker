const mysql = require('mysql2');

// create the connection to database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'employee_tracker',
    password: 'ToyoTaco'
  });





  module.exports  = db;