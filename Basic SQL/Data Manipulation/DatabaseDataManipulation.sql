CREATE TABLE student (
NIM varchar(15) not null PRIMARY KEY,
Name varchar(255) not null,
City_Address varchar(255) not null,
Age integer not null,
IPK float not null,
Departement varchar(255) not null
);

INSERT INTO student(NIM, Name, City_Address, Age, IPK, Departement)
VALUES
(12345, 'Adi', 'Jakarta', 17, 2.5, 'Math'),
(12346, 'Ani', 'Yogyakarta', 20, 2.1, 'Math'),
(12347, 'Ari', 'Surabaya', 18, 2.5, 'Computer'),
(12348, 'Ali', 'Banjarmasin', 20, 3.5, 'Computer'),
(12349, 'Abi', 'Medan', 17, 3.7, 'Computer'),
(12350, 'Budi', 'Jakarta', 19, 3.8, 'Computer'),
(12351, 'Boni', 'Yogyakarta', 20, 3.2, 'Computer'),
(12352, 'Bobi', 'Surabaya', 17, 2.7, 'Computer'),
(12353, 'Beni', 'Banjarmasin', 18, 2.3, 'Computer'),
(12354, 'Cepi', 'Jakarta', 20, 2.2, 'Math'),
(12355, 'Coni', 'Yogyakarta', 22, 2.6, 'Math'),
(12356, 'Ceki', 'Surabaya', 21, 2.5, 'Math'),
(12357, 'Dodi', 'Jakarta', 20, 3.1, 'Math'),
(12358, 'Didi', 'Yogyakarta', 19, 3.2, 'Physics'),
(12359, 'Deri', 'Surabaya', 19, 3.3, 'Physics'),
(12360, 'Eli', 'Jakarta', 20, 2.9, 'Physics'),
(12361, 'Endah', 'Yogyakarta', 18, 2.8, 'Physics'),
(12362, 'Feni', 'Jakarta', 17, 2.7, 'Physics'),
(12363, 'Farah', 'Yogyakarta', 18, 3.5, 'Physics'),
(12364, 'Fandi', 'Surabaya', 19, 3.4, 'Math');

SELECT * FROM student;