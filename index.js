// Reference to creating this server
// is from the official google docs
// https://cloud.google.com/appengine/docs/standard/nodejs/building-app/writing-web-service

const express = require('express');
const app = express();
const mysql = require('mysql');
const cors = require('cors');

app.use(cors());
app.use(express.json());
app.use(function (req, res, next) {
  res.header('Access-Control-Allow-Origin', 'localhost:8080/addcourse'); // update to match the domain you will make the request from
  res.header(
    'Access-Control-Allow-Headers',
    'Origin, X-Requested-With, Content-Type, Accept'
  );
  next();
});
const db = require('./db');

// Connect
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log('MySql Connected...');
});

app.get('/', (req, res) => {
  res.send('Hello from App Engine!');
});

// Routes for courses

// // Add a course
// app.get(`/addcourse`, (req, res) => {
//   let course = { courseName: `Algebra 20`, subject: `Math` };
//   let sql = `INSERT INTO COURSE SET ?`;
//   let query = db.query(sql, course, (err, result) => {
//     if (err) throw err;
//     console.log(result);
//     res.send(`course added…`);
//   });
// });

// Add a course
app.post('/addcourse', (req, res) => {
  const courseName = req.body.courseName;
  const subject = req.body.subject;

  db.query(
    'INSERT INTO COURSE (courseName, subject) VALUES (?,?)',
    [courseName, subject],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send('values inserted');
      }
    }
  );
});

// Get courses
app.get(`/getcourses`, (req, res) => {
  let sql = `SELECT * FROM COURSE`;
  let query = db.query(sql, (err, results) => {
    if (err) throw err;
    console.log(results);
    res.send(`Got courses`);
  });
});

// Get a course
app.get(`/getcourse/:id`, (req, res) => {
  let sql = `SELECT * FROM COURSE WHERE courseId = ${req.params.id}`;
  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    console.log(result);
    res.send(`Got course`);
  });
});

// // Update a course 23:00
// app.get(`/updatecourse/:id`, (req, res) => {
//   let sql = `SELECT * FROM COURSE WHERE courseId = ${req.params.id}`;
//   let query = db.query(sql, (err, result) => {
//     if (err) throw err;
//     console.log(result);
//     res.send(`Got course`);
//   });
// });

// End of routes for courses

// Listen to the App Engine-specified port, or 8080 otherwise
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}...`);
});

// creating routes on express server
// https://youtu.be/re3OIOr9dJI?t=1958
// time starts at 32:38
