//Establishing connection to the database

const { Pool } = require('pg');

const pool = new Pool({
  user: 'erkanegesenli',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

//Querying the database

const cohortName = process.argv[2];

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${cohortName || 'JUL02'}'
ORDER BY teacher;
`)
.then(res => {
  res.rows.forEach(teacher => {
      console.log(`${cohortName}: ${teacher.teacher}`);
  });
  pool.end();
}).catch(err => console.error('query error', err.stack));