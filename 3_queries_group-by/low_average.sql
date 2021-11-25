SELECT students.name AS student_name, AVG(assignment_submissions.duration) as average_submissions_time, avg(assignments.duration) as suggested_time
FROM students JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_submissions_time;