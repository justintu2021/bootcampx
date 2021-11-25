SELECT day, count(*) as number_of_assignments, sum(duration)
FROM assignments
GROUP BY day
ORDER BY assignments.day;