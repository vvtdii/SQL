CREATE TABLE jobs (
jobID serial PRIMARY KEY,
jobTitle varchar(255),
basicSalary int
);

CREATE TABLE  employees (
employeeID int PRIMARY KEY,
lastName varchar(255),
firstName varchar(255),
email varchar(255),
reportsTo int,
jobID int,
salary int
);

INSERT INTO jobs (jobID, jobTitle, basicSalary) VALUES
(1, 'Producer', 20000000),
(2, 'Director', 15000000),
(3, 'Writer', 10000000),
(4, 'Actor', 9000000),
(5, 'Fans', null),
(6, 'Executive Producer', 22500000),
(7, 'Stunt Organizer', 7500000),
(8, 'VFX Artist', 7500000),
(9, 'Stuntman', 6000000);

INSERT INTO employees (employeeID, lastName, firstName, email, reportsTo, jobID, salary) VALUES
(1, 'Carter', 'John', 'carterj@mail.co', null, 1, 21500000),
(2, 'Travolta', 'John', 'travj@mail.co', null, 2, 19000000),
(3, 'Carter', 'Peggy', 'carterp@mail.co', null, 3, 10000000),
(4, 'Connor', 'John', 'connj@mail.co', null, 2, 16000000),
(5, 'Johnson', 'Rian', 'jrian@mail.co', null, 4, 15000000),
(6, 'Rogers', 'Steve', 'cap@mail.co', 3, 2, 17500000),
(7, 'Evans', 'Chris', 'evanc@mail.co', 3, 1, 25000000),
(8, 'Pratt', 'Chris', 'prc@mail.co', 1, 5, 100000),
(9, 'Hemsworth', 'Chris', 'lebowski@mail.co', 2, 3, 12000000),
(10, 'Hemsworth', 'Liam', 'hliam@mail.co', null, 4, 9500000),
(11, 'Feige', 'Kevin', 'kfeige@mail.co', null, 6, 27000000),
(12, 'Miller', 'George', 'travj@mail.co', null, null, null);
