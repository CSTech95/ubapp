// Reference to creating this server
// is from the official google docs
// https://cloud.google.com/appengine/docs/standard/nodejs/building-app/writing-web-service

const express = require('express');
const mysql = require('mysql');

require('dotenv').config();

// Create connection
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
});

// Connect
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log('MySql Connected...');
});
const app = express();

app.get('/', (req, res) => {
  res.send('Hello from App Engine!');
});

app.get(`/addcourse1`, (req, res) => {
  let course = { courseId: 1, courseName: `Art 101`, subject: `Art` };
  let sql = `INSERT INTO COURSE SET ?`;
  let query = db.query(sql, course, (err, result) => {
    if (err) throw err;
    console.log(result);
    res.send(`course added…`);
  });
});

// Listen to the App Engine-specified port, or 8080 otherwise
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}...`);
});
