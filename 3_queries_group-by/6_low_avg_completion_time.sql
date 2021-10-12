SELECT students.name as student_name, AVG(assignment_submissions.duration) as assignment_duration, AVG(assignments.duration) as estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments  ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY assignment_duration;