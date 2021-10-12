SELECT students.name as student_name, AVG(assignment_submissions.duration) as assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY assignment_duration DESC;