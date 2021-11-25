SELECT day, count(*) as total_assignments 
FROM assignmentss
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;