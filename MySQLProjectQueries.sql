USE devcamp_sql_project;

select * from courses;
select * from grades;
select * from professors;
select * from students;
select * from reports;
select * from report_card_full;
select * from report_card;

SELECT * FROM report_card
WHERE professor_name = "Ms. Johnson";

SELECT -- * FROM (report_card)
AVG(grade_for_student)
FROM report_card
WHERE professor_name = "Ms. Johnson";

SELECT student_id, student_name, max(grade_for_student)
FROM report_card_full
GROUP BY student_id,student_name;

-- -- group students by the courses they are enrolled in
SELECT student_name, course_name
FROM report_card
ORDER BY course_name;

-- Create a summary report of courses and their average grades, sorted by the most 
-- challenging course (course with the lowest average grade) to the easiest course
SELECT course_name, AVG(grade_for_student)
FROM report_card
GROUP BY course_name
ORDER BY AVG(grade_for_student);

-- Finding which student and professor have the most courses in common

BEGIN;
create table NumSharedCourses
SELECT student_name, count(course_professor_id) AS sharedCourses, professor_name
FROM report_card_full
GROUP BY student_name, professor_name
ORDER BY count(course_professor_id) DESC;

SELECT * from NumSharedCourses;

SELECT *
FROM NumSharedCourses
WHERE sharedCourses = (SELECT MAX(sharedCourses) FROM NumSharedCourses);

ROLLBACK;


-- other queries that I used

SELECT student_name, professor_name, professor_id
FROM report_card_full
GROUP BY student_name, professor_name, professor_id;

SELECT student_name, count(course_id)
FROM report_card_full
GROUP BY student_name;

SELECT DISTINCT professor_name, count(CAST(course_id AS UNSIGNED))
FROM report_card_full
GROUP BY professor_name, course_name;

SELECT DISTINCT course_id, course_name, course_professor_id
FROM report_card_full;

-- how many students each professor has
SELECT professor_name, count(student_name)
FROM report_card_full
GROUP BY professor_name;

-- courses taught by each professor
SELECT DISTINCT professor_name, course_name
FROM report_card_full
GROUP BY professor_name, course_name;


SELECT count(course_professor_id), professor_name
FROM report_card_full
GROUP BY professor_name;



-- shows the number of shared courses between each student and professor
-- in order by student
SELECT student_name, professor_name, sharedCourses
FROM NumSharedCourses
GROUP BY student_name, professor_name, sharedCourses
ORDER BY student_name;


-- shows the course_id, professor_name, professor_course_id, and course_name
BEGIN;
CREATE TABLE professorsAndCourses
SELECT course_professor_id, professor_name, course_id, course_name
FROM courses c
JOIN professors p
ON c.course_professor_id = p.professor_id
GROUP BY course_professor_id, professor_name, course_id, course_name;

SELECT * FROM professorsAndCourses;

-- shows the course_id and corresponding professor_course_id
SELECT course_professor_id, course_id
FROM courses
GROUP BY course_professor_id, course_id;

-- shows how many courses each professor_id has
SELECT course_professor_id, count(course_id)
FROM courses
GROUP BY course_professor_id;

BEGIN;
create table professors_courses
SELECT course_professor_id, professor_name, count(course_id)
FROM courses c
JOIN professors p
ON c.course_professor_id = p.professor_id
GROUP BY course_professor_id, professor_name;

-- shows how many courses each professor has
SELECT * FROM professors_courses;