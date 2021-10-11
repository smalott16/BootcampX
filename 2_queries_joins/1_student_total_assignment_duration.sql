SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';


---My solution differed slightly from compass, but it still worked. Replaced my code with above for consistency

---SELECT sum(duration) as total_duration
---FROM students
---JOIN assignment_submissions ON students.id = assignment_submissions.student_id
---WHERE name = 'Ibrahim Schimmel';
