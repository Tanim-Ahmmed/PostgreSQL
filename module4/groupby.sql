SELECT * FROM student;
SELECT country, count(*), avg(age) FROM student
GROUP BY country;


SELECT country, avg(age) FROM student
GROUP BY country
HAVING avg(age) >22;

SELECT extract(year from dob) as birth_year, count(*) FROM student
GROUP BY birth_year;

