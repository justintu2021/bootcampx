SELECT assignments.id, day, chapter, count(assistance_requests.*) as total_request
FROM assignments JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_request DESC;

-- (SELECT cohorts.name as cohort,
-- SUM(completed_at-started_at) as total_duration
-- FROM assistance_requests JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY total_duration) as total_cohort_assistance_duration;