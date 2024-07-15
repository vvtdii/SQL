--1. Show city address collumn without any duplicate
SELECT DISTINCT City_Address FROM student;

--2. Show student name data from computer departement
SELECT Name FROM student WHERE Departement='Computer';

--3. Show nim, name, age and address data sorted from the oldest student
SELECT NIM, Name, City_Address, Age FROM student ORDER BY age DESC;

--4. Show name and age of 3 youngest student from jakarta
SELECT Name, Age FROM student WHERE City_Address='Jakarta'
	ORDER BY age LIMIT 3;

--5. Show name and ipk student from jakarta with ipk under 2,5
SELECT Name, IPK FROM student WHERE City_Address='Jakarta' AND IPK<2.5;

--6. Show any student name from yogyakarta or have age older than 20
SELECT Name, Age FROM student WHERE City_Address='Yogyakarta' OR Age>20;

--7. Show any student name and address not from jakarta and surabaya
SELECT Name, City_Address FROM student WHERE City_Address NOT IN ('Jakarta', 'Surabaya');

--8. Show name, age and ipk student with ipk from 2,5 to 3,5
SELECT Name, Age, IPK FROM student WHERE IPK BETWEEN 2.5 AND 3.5;

--9. Show student name that have letter a in the name
SELECT Name FROM student WHERE LOWER(Name)LIKE '%a%';

--10. Show Maximum ipk from student from jakarta
SELECT MAX(IPK) FROM student WHERE City_Address='Jakarta';
SELECT Name,IPK FROM student WHERE City_Address='Jakarta' ORDER BY IPK DESC LIMIT 1;

--11. Show Minimum ipk from Computer departement student
SELECT Name,IPK FROM student WHERE departement='Computer' ORDER BY IPK ASC LIMIT 1;

--12. Show Average ipk from math departement student
SELECT AVG(IPK) FROM student WHERE departement='Math';

--13. Show number of student in Computer departement
SELECT COUNT(*) FROM student WHERE departement='Computer';

--14. Show data number of student on each departement
SELECT Departement, COUNT(*) AS Jumlah_Mahasiswa FROM student GROUP BY Departement;

--15. Show data number of student group by city address with age under 20 year
SELECT City_Address, Age, COUNT(*) AS Jumlah_Mahasiswa FROM student 
	WHERE Age<20 GROUP BY Age, City_Address ORDER BY City_Address;