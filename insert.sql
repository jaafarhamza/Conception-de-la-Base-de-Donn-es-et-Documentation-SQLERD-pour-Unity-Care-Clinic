--1
INSERT INTO patients (first_name, last_name, gender, date_of_birth, phone_number) 
VALUES ('Alex', 'Johnson', 'male', '1990-07-15', '1234567890');

SELECT*FROM patients;

show TABLES;

SELECT*FROM admissions, appointments, departments, doctors, medications, patients, rooms, prescriptions, staff;

--2
SELECT*FROM departments;

--3
INSERT INTO patients (first_name, last_name, gender, date_of_birth, phone_number,email,addresse) 
VALUES ('mohammed', 'reda', 'male', '2001-06-15', '0630242599','youcode@youcode.com','algere'),
('asmahan', 'alaoui', 'female', '2005-06-15', '0630255599','youcode@gmail.com','lisbon');

select*FROM patients

SELECT*FROM patients
ORDER BY date_of_birth ASC;

SELECT*FROM patients
ORDER BY date_of_birth DESC;

UPDATE patients
set date_of_birth = '2015-02-01'
WHERE patient_id=3;

--4
SELECT DISTINCT gender
FROM patients;

--5
insert into departments (department_name,location) VALUES('Oncology','Building A'),('Neurology', 'Building B'),
('Pediatrics', 'Building C'),
('Orthopedics', 'Building D');

insert into doctors (first_name,last_name,specialization,phone_number,email,department_id)
VALUES('hamza', 'Smith', 'Cardiology', '1234567890', 'hamza.smith@example.com', 1),
('aya', 'Johnson', 'Neurology', '2345678901', 'aya.johnson@example.com', 2),
('Robert', 'Brown', 'Pediatrics', '3456789012', 'robert.brown@example.com', 3),
('Olivia', 'Davis', 'Orthopedics', '4567890123', 'olivia.davis@example.com', 4),
('William', 'Taylor', 'Dermatology', '5678901234', 'william.taylor@example.com', 2);

SELECT*FROM doctors
LIMIT 3;

--6
SELECT*FROM patients
WHERE date_of_birth > '2000-01-01';

--7
insert into departments (department_name,location) VALUES('Cardiology','Building E')

SELECT*from doctors
WHERE specialization = 'Neurology' or specialization = 'Cardiology';

SELECT*FROM doctors
WHERE specialization IN ('Neurology','Cardiology');

--8
INSERT INTO rooms (room_number,room_type,availability)
VALUES (1, 'General', '0'),
(2, 'ICU', '0'),
(5, 'Private', '0');

insert INTO rooms (room_number,room_type)
VALUES (3, 'General'),
(4, 'ICU')

SELECT*FROM rooms

insert into admissions (patient_id,room_id,admission_date,discharge_date)
VALUES (1, 2, '2024-12-01', '2024-12-05'),
(2, 5, '2024-12-03', '2024-12-08'),
(3, 4, '2024-12-07', '2024-12-10'),
(4, 1, '2024-12-14', '2024-12-19'),
(5, 3, '2024-12-20', '2024-12-29');

SELECT*FROM admissions

SELECT*FROM admissions
WHERE admission_date BETWEEN '2024-12-01' and '2024-12-07'

--9
-- alter table patients
-- add COLUMN catégorie ENUM ("Enfant","Adulte","Senior")

-- alter Table patients
-- drop COLUMN catégorie

SELECT first_name,last_name,
TIMESTAMPDIFF(YEAR,date_of_birth,CURDATE()) as age,
case 
WHEN TIMESTAMPDIFF(YEAR,date_of_birth,CURDATE()) < 18 THEN 'Enfant'
WHEN TIMESTAMPDIFF(YEAR,date_of_birth,CURDATE()) BETWEEN 18 and 64 THEN 'adulte'
else 'senior'
END 
from patients;

--10
SELECT*FROM appointments

insert into appointments (appointment_date,appointment_time,doctor_id,patient_id,reason)
VALUES
('2024-12-01', '09:00', 1, 1, 'Routine Checkup'),
('2024-12-02', '14:00', 2, 2, 'Neurology Consultation'),
('2024-12-03', '10:30', 3, 3, 'Pediatric Examination'),
('2024-12-04', '15:00', 4, 4, 'Orthopedic Follow-up'),
('2024-12-05', '11:00', 5, 5, 'Dermatology Consultation');

SELECT COUNT(*) as total_de_rendez_vous
FROM appointments

--11
SELECT department_id, 
COUNT(*) as nombre_de_médecins
from doctors
GROUP BY department_id

--12
SELECT AVG(TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE())) AS average_age
FROM patients;

--13
SELECT appointment_date, appointment_time
FROM appointments
WHERE CONCAT(appointment_date, appointment_time) = (SELECT max (CONCAT(appointment_date,appointment_time))FROM appointments);

SELECT MAX(appointment_date)
FROM appointments

SELECT*from appointments

--14
select room_id, count(*) as  total_des_admissions 
FROM admissions
GROUP BY room_id

--15
SELECT * FROM patients
WHERE email is NULL

--16  Jointure :
SELECT
appointments.appointment_date,
appointments.appointment_time,
doctors.first_name as doctor_first_name,
doctors.last_name as doctor_last_name,
patients.first_name as patient_first_name,
patients.last_name as patient_last_name
FROM appointments
INNER JOIN doctors ON appointments.doctor_id=doctors.doctor_id
inner join patients on appointments.patient_id=patients.patient_id

--17
select * from appointments

insert into appointments (appointment_date,appointment_time,doctor_id,patient_id,reason)
VALUES
('2023-12-01', '09:00', 1, 1, 'Routine Checkup'),
('2023-12-02', '14:00', 2, 2, 'Neurology Consultation')

DELETE FROM appointments
WHERE appointment_date <= '2023-12-31'

--18
select *FROM departments

UPDATE departments
set department_name = "Cancer Treatment"
WHERE department_name ="Oncology";

--19
SELECT gender,COUNT(*) as gendres
FROM patients
GROUP BY gender
HAVING COUNT(*)>=3

SELECT * FROM patients

--20







