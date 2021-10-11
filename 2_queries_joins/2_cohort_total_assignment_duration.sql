SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';



/* The following was my solution which works but was unnecessarily clunky. No nested join needed. Could have just added a join. 

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN (
  SELECT students.id as student_id, cohorts.name as cohort_name
  FROM students
  JOIN cohorts ON cohort_id = cohorts.id
) AS temptable
ON temptable.student_id = assignment_submissions.student_id
WHERE temptable.cohort_name = 'FEB12'; 

*/
