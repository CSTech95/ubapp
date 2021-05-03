import './App.css';
import { useState } from 'react';
import axios from 'axios';

function App() {
  const [courseName, setcourseName] = useState('');
  const [subject, setSubject] = useState('');

  const displayInfo = () => {
    console.log(courseName + subject);
  };

  const addCourse = () => {
    axios
      .post('localhost:8080/addcourse', {
        courseName: courseName,
        subject: subject,
      })
      .then(() => {
        console.log('success');
      });
  };

  return (
    <div className="App">
      <div className="info">
        <input
          type="text"
          onChange={(e) => {
            setcourseName(e.target.value);
          }}
          placeholder="Enter Name"
        />
        <input
          type="text"
          onChange={(e) => {
            setSubject(e.target.value);
          }}
          placeholder="Enter Subject"
        />
        <button onClick={addCourse}> Add Course</button>
      </div>
    </div>
  );
}

export default App;
