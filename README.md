# Students Mental Health SQL Project

This is a simple SQL project where I analyze how the **length of stay** impacts the **mental health** of **international students**.

It’s my **first SQL project** after completing an **intermediate SQL course**, and a small step toward building my data analyst portfolio.

---

## Objective

To explore whether a student's **length of stay** has any relationship with their **mental health diagnostic scores**, using data from international students.

---

## Dataset Overview

- **Table:** `students`
- **Columns used:**
  - `stay` – Length of stay (in years)
  - `inter_dom` – Indicates if the student is International (`'Inter'`) or Domestic (`'Dom'`)
  - `todep` – PHQ-9 score (depression screening)
  - `tosc` – SCS score (self-compassion scale)
  - `toas` – ASISS score (acculturative stress scale)

---

## Key SQL Concepts Used

- `WHERE` clause (filtering for international students)
- `GROUP BY` and `ORDER BY`
- Aggregate functions: `COUNT()`, `AVG()`
- `ROUND()` to format average results

---

## Output

This query returns a summary table showing how international students' mental health scores vary based on their length of stay.
The result includes:
  - Number of international students per length of stay (count_int)
  - Average PHQ-9 score (average_phq)
  - Average SCS score (average_scs)
  - Average ASISS score (average_as)
All averages are rounded to 2 decimal places and sorted by stay in descending order.

---

## Tools Used
- SQL Engine: PostgreSQL
- Platform: DataCamp’s Datalab (browser-based PostgreSQL environment)

---

## What I Learned
- How to group, filter, and aggregate data with SQL
- The value of clean formatting and aliasing for readability
- How to transform raw data into insights
- How to document and share projects on GitHub professionally
- How to turn a simple exercise into a real project to build my portfolio

---

## About Me
I'm a beginner data analyst learning by building real projects. This is my first SQL project after completing an intermediate SQL course.

---

## Final Query

```sql
SELECT 
  stay,
  COUNT(*) AS count_int,
  ROUND(AVG(todep), 2) AS average_phq,
  ROUND(AVG(tosc), 2) AS average_scs,
  ROUND(AVG(toas), 2) AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC
LIMIT 9;
