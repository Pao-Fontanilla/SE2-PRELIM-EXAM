DROP TABLE Customers;
DROP TABLE Orders;
DROP TABLE Shippings;

CREATE TABLE `Student` (
  `student_id` int PRIMARY KEY,
  `enrolled_subject_id` int,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `grade_level` int
);

CREATE TABLE `EnrolledSubject` (
  `subject_id` int PRIMARY KEY,
  `subject_name` varchar(255)
);

CREATE TABLE `Exam` (
  `exam_id` int PRIMARY KEY,
  `subject_id` int,
  `exam_name` varchar(255),
  `exam_date` datetime
);

CREATE TABLE `PracticeTest` (
  `test_id` int PRIMARY KEY,
  `subject_id` int,
  `test_name` varchar(255)
);

CREATE TABLE `StudentPerformance` (
  `performance_id` int PRIMARY KEY,
  `student_id` int,
  `test_id` int,
  `score` int,
  `date_taken` datetime
);

insert into Student (student_id, enrolled_subject_id, first_name, last_name, grade_level) values (1, 1, 'Stavro', 'Broader', 8);
insert into Student (student_id, enrolled_subject_id, first_name, last_name, grade_level) values (2, 3, 'Florance', 'Jenno', 10);
insert into Student (student_id, enrolled_subject_id, first_name, last_name, grade_level) values (3, 4, 'Morganica', 'Ranstead', 11);
insert into Student (student_id, enrolled_subject_id, first_name, last_name, grade_level) values (4, 2, 'Batsheva', 'Brinicombe', 10);
insert into Student (student_id, enrolled_subject_id, first_name, last_name, grade_level) values (5, 1, 'Wakefield', 'Bowie', 11);

insert into EnrolledSubject (subject_id, subject_name) values (1, 'Math');
insert into EnrolledSubject (subject_id, subject_name) values (2, 'Science');
insert into EnrolledSubject (subject_id, subject_name) values (3, 'History');
insert into EnrolledSubject (subject_id, subject_name) values (4, 'English');
insert into EnrolledSubject (subject_id, subject_name) values (5, 'Physical Education');

insert into Exam (exam_id, subject_id, exam_name, exam_date) values (1, 4, 'English Finals', '2022-10-28');
insert into Exam (exam_id, subject_id, exam_name, exam_date) values (2, 1, 'Math Finals', '2024-04-18');
insert into Exam (exam_id, subject_id, exam_name, exam_date) values (3, 2, 'Science Finals', '2024-02-07');
insert into Exam (exam_id, subject_id, exam_name, exam_date) values (4, 1, 'Math Pre-Finals', '2023-08-29');
insert into Exam (exam_id, subject_id, exam_name, exam_date) values (5, 2, 'Science Prelims', '2023-03-22');

insert into PracticeTest (test_id, subject_id, test_name) values (1, 1, 'Math Practice Test 1');
insert into PracticeTest (test_id, subject_id, test_name) values (2, 3, 'Science Practice Test 1');
insert into PracticeTest (test_id, subject_id, test_name) values (3, 1, 'Math Practice Test 2');
insert into PracticeTest (test_id, subject_id, test_name) values (4, 4, 'English Practice Test 4');
insert into PracticeTest (test_id, subject_id, test_name) values (5, 3, 'History Practice Test 3');

insert into StudentPerformance (performance_id, student_id, test_id, score, date_taken) values (1, 1, 1, 89, '2023-06-02');
insert into StudentPerformance (performance_id, student_id, test_id, score, date_taken) values (2, 1, 1, 80, '2022-11-23');
insert into StudentPerformance (performance_id, student_id, test_id, score, date_taken) values (3, 5, 5, 76, '2022-09-22');
insert into StudentPerformance (performance_id, student_id, test_id, score, date_taken) values (4, 4, 5, 83, '2023-03-10');
insert into StudentPerformance (performance_id, student_id, test_id, score, date_taken) values (5, 1, 4, 82, '2023-06-09');


