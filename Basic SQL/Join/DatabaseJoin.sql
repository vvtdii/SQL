CREATE TABLE student_data (
nim int PRIMARY KEY,
name varchar(255),
city_address varchar(255),
age int
);

CREATE TABLE student_ipk (
nim int,
ipk float,
FOREIGN KEY (nim) REFERENCES student_data(nim)
);

create table student_department (
nim int,
department varchar(255),
FOREIGN KEY (nim) REFERENCES student_data(nim)
);

INSERT INTO student_data(nim, name, city_address, age) VALUES
(12345, 'Adi', 'Jakarta', 17),
(12346, 'Ani', 'Yogyakarta', 20),
(12347, 'Ari', 'Surabaya', 18),
(12348, 'Ali', 'Banjarmasin', 20),
(12349, 'Abi', 'Medan', 17),
(12350, 'Budi', 'Jakarta', 19),
(12351, 'Boni', 'Yogyakarta', 20),
(12352, 'Bobi', 'Surabaya', 17),
(12353, 'Beni', 'Banjarmasin', 18),
(12354, 'Cepi', 'Jakarta', 20),
(12355, 'Coni', 'Yogyakarta', 22),
(12356, 'Ceki', 'Surabaya', 21),
(12357, 'Dodi', 'Jakarta', 20),
(12358, 'Didi', 'Yogyakarta', 19),
(12359, 'Deri', 'Surabaya', 19),
(12360, 'Eli', 'Jakarta', 20),
(12361, 'Endah', 'Yogyakarta', 18),
(12362, 'Feni', 'Jakarta', 17),
(12363, 'Farah', 'Yogyakarta', 18),
(12364, 'Fandi', 'Surabaya', 19);

INSERT INTO student_ipk(nim, ipk) VALUES
(12345, 2.5),
(12346, 2.1),
(12347, 2.5),
(12348, 3.5),
(12349, 3.7),
(12350, 3.8),
(12351, 3.2),
(12352, 2.7),
(12353, 2.3),
(12354, 2.2),
(12355, 2.6),
(12356, 2.5),
(12357, 3.1),
(12358, 3.2),
(12359, 3.3),
(12360, 2.9),
(12361, 2.8),
(12362, 2.7),
(12363, 3.5),
(12364, 3.4);

INSERT INTO student_department(nim, department) VALUES
(12345, 'Math'),
(12346, 'Math'),
(12347, 'Computer'),
(12348, 'Computer'),
(12349, 'Computer'),
(12350, 'Computer'),
(12351, 'Computer'),
(12352, 'Computer'),
(12353, 'Computer'),
(12356, 'Math'),
(12357, 'Math'),
(12358, 'Physics'),
(12359, 'Physics'),
(12360, 'Physics'),
(12361, 'Physics');