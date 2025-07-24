-- Project: Student Mental Health Analysis (SQL)
-- Description: This query explores how the length of stay affects
--              the mental health of international students, using
--              PHQ-9, SCS, and ASISS scores.

-- Preview all data in the students table
SELECT * 
FROM students;

-- Analyze the impact of length of stay on mental health
-- for international students only

SELECT 
	stay, 									-- length of stay
	COUNT(*) AS count_int, 					-- number of international students
	ROUND(AVG(todep), 2) AS average_phq, 	-- average PHQ-9 score
	ROUND(AVG(tosc), 2) AS average_scs, 	-- average SCS score
	ROUND(AVG(toas), 2) AS average_as 		-- average ASISS score
FROM students
WHERE inter_dom = 'Inter'	-- filter for international students
GROUP BY stay
ORDER BY stay DESC
LIMIT 9;