CREATE DATABASE diario;

USE diario;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(70),
  cohort VARCHAR(10),
  skills TEXT,
  project1 VARCHAR(100),
  project2 VARCHAR(100),
  project3 VARCHAR(100),
  project4 VARCHAR(100),
  grade1 FLOAT(3,2),
  grade2 FLOAT(3,2),
  grade3 FLOAT(3,2),
  grade4 FLOAT(3,2),
  created_at DATE DEFAULT (NOW())
);

INSERT INTO students (
  name,
  cohort, 
  skills,
  project1,
  project2,
  project3,
  project4,
  grade1,
  grade2,
  grade3,
  grade4
) VALUES (
  'John Doe',
  'Turma 01',
  'HTML5, CSS3, Git, JavaScript, React',
  'Projeto - Lessons Learned',
  'Projeto - Supermercado Pirilampo',
  'Projeto - Arte com Pixels',
  'Projeto - Trybewarts',
  0.9,
  0.8,
  0.75,
  0.85
);

CREATE TABLE cohorts(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL,
    started_at DATE DEFAULT(NOW())
);

INSERT INTO cohorts (name, started_at) 
VALUES ('Turma 03', '2020-01-27'),
       ('Turma 04', '2020-03-09'),
       ('Turma 05', '2020-04-22');

TRUNCATE TABLE cohorts;

INSERT INTO cohorts (name, started_at)
VALUES ('CHSD01', '2019-09-15'),
       ('CHSD02', '2019-10-28'),
       ('CHSD03', '2020-01-27'),
       ('CHSD04', '2020-03-09'),
       ('CHSD05', '2020-04-22'), 
       ('CHSD06', '2020-06-22'),
       ('CHSD07', '2020-08-10'),
       ('CHSD08', '2020-09-28'),
       ('CHSD09', '2020-11-09'),
       ('CHSD10', '2021-02-01');

SELECT * FROM students;

CREATE TABLE student_projects(
  id INT PRIMARY KEY AUTO_INCREMENT,
  project_name VARCHAR(100) NOT NULL,
  grade FLOAT(3,2) NOT NULL,
  student_id INT NOT NULL, 
  FOREIGN KEY (student_id) REFERENCES students(id)
)

INSERT INTO student_projects (project_name, grade, student_id)
VALUES ('Projeto - Lessons Learned', 0.9, 1),
('Projeto - Supermercado Pirilampo', 0.8, 1);

SELECT * FROM student_projects AS stp
INNER JOIN students AS stu ON stu.id = stp.student_id;

ALTER TABLE students
DROP COLUMN project1,
DROP COLUMN project2,
DROP COLUMN project3,
DROP COLUMN project4,
DROP COLUMN grade1,
DROP COLUMN grade2,
DROP COLUMN grade3,
DROP COLUMN grade4;

SELECT * FROM student_projects;

INSERT INTO student_projects (project_name, grade, student_id)
VALUES ('Lessons Learned', 0.65, 2),
       ('Supermercado Pirilampo', 0.85, 2);

INSERT INTO student_projects (project_name, grade, student_id)
VALUES ('Lessons Learned', 0.15, 3),
       ('Supermercado Pirilampo', 0.25, 3),
       ('Arte com Pixels', 0.35, 3);


INSERT INTO projects (name)
VALUES ('Projeto - Lessons Learned'),
       ('Projeto - Supermercado Pirilampo'),
       ('Projeto - Arte com Pixels'),
       ('Projeto - Trybewarts');

ALTER TABLE student_projects
ADD COLUMN project_id INT;

ALTER TABLE student_projects
ADD FOREIGN KEY (project_id) REFERENCES projects(id);