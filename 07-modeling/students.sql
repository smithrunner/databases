CREATE TABLE student (
  studentID int,
  name text,
  email text
);

CREATE TABLE class (
  classID int,
  name text,
  capacity int,
  professor text,
  department text
);

CREATE TABLE student_reg (
  classID int,
  studentID int,
  grade int
);

SELECT studentID FROM student_reg
WHERE classID = 0001;

SELECT COUNT(grade) FROM student_reg
WHERE classID = 0001
GROUP BY grade;

SELECT name, COUNT(student_reg.classID) FROM class
JOIN student_reg.classID ON student_reg.classID = class.classID;

SELECT COUNT(classID) FROM student_reg
GROUP BY classID
LIMIT 1;
