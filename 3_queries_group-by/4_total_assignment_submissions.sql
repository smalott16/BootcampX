SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;

/* used compass solution for slightly improved syntax. Near Identical query

SELECT cohorts.name, count(assignment_submissions.*)
FROM cohorts
JOIN students ON cohort_id = cohorts.id 
JOIN assignment_submissions ON student_id = students.id
GROUP BY (cohorts.name)
ORDER BY count(assignment_submissions.*) DESC;

*/
