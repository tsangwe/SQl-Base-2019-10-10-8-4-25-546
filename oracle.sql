CREATE USER student_examination_sys IDENTIFIED BY student_examination_sys;

CREATE TABLE student_examination_sys.student (
  id NUMBER(10) NOT NULL,
  name VARCHAR2(45) NULL,
  age NUMBER(10) NULL,
  sex VARCHAR2(6) NULL,
  PRIMARY KEY (id));

CREATE TABLE student_examination_sys.subject (
  id NUMBER(10) NOT NULL,
  subject VARCHAR2(45) NULL,
  teacher VARCHAR2(45) NULL,
  description VARCHAR2(45) NULL,
  PRIMARY KEY (id));

CREATE TABLE student_examination_sys.score (
  id NUMBER(10) NOT NULL,
  student_id NUMBER(10) NULL,
  subject_id NUMBER(10) NULL,
  score BINARY_DOUBLE NULL,
  PRIMARY KEY (id));

INSERT INTO student_examination_sys.student (id, name, age, sex) VALUES ('001', 'zhangsan', '18', 'male');
INSERT INTO student_examination_sys.student (id, name, age, sex) VALUES ('002', 'lisi', '20', 'female');

INSERT INTO student_examination_sys.subject (id, subject, teacher, description) VALUES ('1001', 'Chinese', 'Mr. Wang', 'the exam is easy');
INSERT INTO student_examination_sys.subject (id, subject, teacher, description) VALUES ('1002', 'math', 'Miss Liu', 'the exam is difficult');

INSERT INTO student_examination_sys.score (id, student_id, subject_id, score) VALUES ('1', '001', '1001', '80');
INSERT INTO student_examination_sys.score (id, student_id, subject_id, score) VALUES ('2', '002', '1002', '60');
INSERT INTO student_examination_sys.score (id, student_id, subject_id, score) VALUES ('3', '001', '1001', '70');
INSERT INTO student_examination_sys.score (id, student_id, subject_id, score) VALUES ('4', '002', '1002', '60.5');
