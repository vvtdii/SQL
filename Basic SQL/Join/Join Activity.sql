--1. Show the names of students who have a GPA of more than 3
SELECT dt.name, ip.ipk
FROM student_data as dt
INNER JOIN student_ipk as ip
ON dt.nim = ip.nim
WHERE ip.ipk>3 ORDER BY ipk;

--2. Show the names of students who have a source from Yogyakarta
SELECT name FROM student_data WHERE city_address='Yogyakarta';

--3. Show the name of the student who has a name from the Math department
SELECT dt.name, dp.department
FROM student_data as dt
JOIN student_department as dp
ON dt.nim = dp.nim
WHERE dp.department = 'Math';

--4. Show the name of the student who has the highest GPA
SELECT dt.name, ip.ipk
FROM student_data as dt
JOIN student_ipk as ip
ON dt.nim = ip.nim
ORDER BY IPK DESC LIMIT 1;

--5. Show the name of the student from the Physics department
SELECT dt.name, dp.department
FROM student_data as dt
JOIN student_department as dp
ON dt.nim = dp.nim
WHERE dp.department = 'Physics';

--6. Show the number of students who have not entered any department
SELECT COUNT(dt.nim) as Jumlah_Mahasiswa
FROM student_data as dt
LEFT JOIN student_department as dp
ON dt.nim=dp.nim
WHERE dp.department is null;

--7. Show the number of students from the Computer department
SELECT COUNT(*) as Jumlah_Mahasiswa_Computer 
FROM student_data as dt 
JOIN student_department as dp 
ON dt.nim = dp.nim 
WHERE dp.department = 'Computer';

--8. Show average age of students from Surabaya
SELECT AVG(dt.age) as Avg_umur_mahasiswa_Surabaya
FROM student_data as dt
WHERE dt.city_address = 'Surabaya';

--9. Show the average GPA of students from Jakarta
SELECT AVG(ip.ipk) as Average_IPK 
FROM student_ipk as ip 
JOIN student_data as dt 
ON ip.nim=dt.nim 
WHERE dt.city_address='Jakarta';

--10. Show the average age of students who have a GPA of more than 3
SELECT AVG(dt.age) as Average_IPK 
FROM student_data as dt 
JOIN student_ipk as ip 
ON dt.nim=ip.nim 
where ip.ipk>3;

--11. Show the average GPA of each region
SELECT dt.city_address, AVG(ip.ipk) 
FROM student_ipk as ip
JOIN student_data as dt 
ON ip.nim=dt.nim GROUP BY dt.city_address;