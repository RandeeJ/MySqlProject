USE devcamp_sql_project;


-- GAME PLAN
-- courses have professors - 1:1 relationship
-- students to courses - n:n relationship
-- students to grades - 1:n relationship


-- BEGIN;
-- DELETE FROM courses
-- WHERE course_id =7;

-- ROLLBACK;

-- delete records
BEGIN;
	DELETE FROM courses
	WHERE course_id > 5;

ROLLBACK;


-- to reset auto-increment - CANNOT GET TO WORK YET
ALTER TABLE courses AUTO_INCREMENT = 0;

-- to delete table 
TRUNCATE TABLE professors;



-- upload courses 
INSERT INTO courses(course_name, course_professor_id)
VALUES ('Math', 2);
INSERT INTO courses(course_name, course_professor_id)
VALUES ('Chemistry', 3);
INSERT INTO courses(course_name, course_professor_id)
VALUES ('Biology', 4);
INSERT INTO courses(course_name, course_professor_id)
VALUES ('English Language Arts', 1);
INSERT INTO courses(course_name, course_professor_id)
VALUES ('Social Studies', 5);
INSERT INTO courses(course_name, course_professor_id)
VALUES ('Financial Literacy', 2);
INSERT INTO courses(course_name, course_professor_id)
VALUES ('Dance', 5);
INSERT INTO courses(course_name, course_professor_id)
VALUES ('Drama', 5);
INSERT INTO courses(course_name, course_professor_id)
VALUES ('Art', 2);
SELECT * FROM courses;

-- upload professors 
INSERT INTO professors(professor_name)
VALUES ('Mrs. Weisz');
INSERT INTO professors(professor_name)
VALUES ('Ms. Johnson');
INSERT INTO professors(professor_name)
VALUES ('Mr. Carboni');
INSERT INTO professors(professor_name)
VALUES ('Mrs. DeSantis');
INSERT INTO professors(professor_name)
VALUES ('Ms. Zipkin');
SELECT * from professors;

-- UPDATE professors
-- SET professors_course_id = INT
-- WHERE professors_course_id IS NULL;

-- ALTER TABLE professors
-- MODIFY professors_course_id INT NOT NULL
-- DEFAULT 

-- upload grades
INSERT INTO grades(grade_for_student)
VALUES (60);
INSERT INTO grades(grade_for_student)
VALUES (70);
INSERT INTO grades(grade_for_student)
VALUES (80);
INSERT INTO grades(grade_for_student)
VALUES (90);
INSERT INTO grades(grade_for_student)
VALUES (100);
SELECT * from grades;

-- upload students
SELECT * from students;

INSERT INTO students(student_name)
VALUES ("Yael");
INSERT INTO students(student_name)
VALUES ("Bennet");
INSERT INTO students(student_name)
VALUES ("Owen");
INSERT INTO students(student_name)
VALUES ("Connor");
INSERT INTO students(student_name)
VALUES ("Isabel");
INSERT INTO students(student_name)
VALUES ("Zoey");
INSERT INTO students(student_name)
VALUES ("Jon");
INSERT INTO students(student_name)
VALUES ("Juliana");
INSERT INTO students(student_name)
VALUES ("Sasha");
INSERT INTO students(student_name)
VALUES ("Wendy");
INSERT INTO students(student_name)
VALUES ("Yali");

SELECT * from students;

SELECT * from reports;
-- Yael
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (1, 1, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (1, 2, 3);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (1, 4, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (1, 5, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (1, 6, 4);
-- Bennet
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (2, 1, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (2, 2, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (2, 3, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (2, 5, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (2, 7, 4);
-- Connor
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (3, 2, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (3, 3, 3);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (3, 4, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (3, 5, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (3, 8, 5);
-- Isabel
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (4, 1, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (4, 2, 3);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (4, 3, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (4, 4, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (4, 9, 4);
-- Zoey
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (5, 1, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (5, 2, 3);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (5, 4, 2);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (5, 5, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (5, 6, 4);
-- Jon
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (6, 1, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (6, 3, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (6, 4, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (6, 5, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (6, 7, 4);
-- Juliana
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (7, 1, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (7, 2, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (7, 4, 1);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (7, 5, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (7, 8, 4);
-- Sasha
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (8, 1, 2);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (8, 2, 3);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (8, 3, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (8, 5, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (8, 9, 4);
-- Wendy
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (9, 1, 3);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (9, 2, 3);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (9, 4, 3);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (9, 5, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (9, 6, 4);
-- Owen
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (10, 1, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (10, 3, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (10, 4, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (10, 5, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (10, 7, 4);
-- Yali
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (11, 2, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (11, 3, 3);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (11, 4, 5);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (11, 5, 4);
INSERT INTO reports(r_student_id, r_course_id, r_grade_id)
VALUES (11, 8, 4);



-- show grades and courses for all students
BEGIN;
create table report_card
-- create a table name

	SELECT distinct student_id, student_name, course_name, professor_name, grade_for_student

BEGIN;
create table report_card_full
   
SELECT *
	FROM reports r
	JOIN students s
	ON r.r_student_id = s.student_id
    JOIN courses c
    ON r_course_id = course_id
	JOIN professors p
	ON c.course_professor_id = p.professor_id
	JOIN grades g
	ON r_grade_id = grade_id;
    
ROLLBACK;
    
SELECT * FROM reports;
SELECT * FROM report_card;
SELECT * FROM report_card_full;