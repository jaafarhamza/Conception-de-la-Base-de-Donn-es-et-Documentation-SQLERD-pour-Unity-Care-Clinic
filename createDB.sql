SHOW DATABASES ;
use hospitalManagement;
CREATE Table patients 
(
    patient_id INT(11) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender ENUM ('male','female','other'),
    date_of_birth DATE ,
    phone_number VARCHAR (15),
    email VARCHAR(100),
    addresse VARCHAR(255)
);

CREATE table admissions(
    admission_id int(11) PRIMARY KEY,
    patient_id int(11) ,
    room_id INT(11),
    admission_date DATE,
    discharge_date DATE
);
--primary key room !!!!!!!!!!!!!!!!!!
CREATE Table rooms(
    room_id int(11),
    room_number VARCHAR(10),
    room_type ENUM('general','private','ICU'),
    availability TINYINT DEFAULT 1
);

CREATE Table staff(
    staff_id INT(11) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    department_id INT(11)
);

CREATE Table departments(
    department_id int(11) PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

CREATE table doctors(
    doctor_id int(11),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    department_id INT(11)
);

CREATE Table medications(
    medication_id int(11),
    medication_name VARCHAR(100),
    dosage VARCHAR(50)
);

CREATE Table prescriptions(
    prescription_id INT(11),
    patient_id int(11),
    doctor_id INT(11),
    medication_id INT(11),
    prescription_date DATE,
    dosage_instructions VARCHAR(255)
);

CREATE Table appointments(
    appointment_id INT(11) PRIMARY KEY,
    appointment_date DATE,
    appointment_time TIME,
    doctor_id int(11),
    patient_id INT(11),
    reason VARCHAR(255)
);

ALTER TABLE patients
MODIFY patient_id INT AUTO_INCREMENT;

ALTER TABLE admissions
MODIFY admission_id INT AUTO_INCREMENT;

ALTER TABLE admissions
MODIFY admission_id INT  AUTO_INCREMENT;

alter Table rooms
MODIFY room_id int PRIMARY KEY AUTO_INCREMENT

alter Table staff
MODIFY staff_id int AUTO_INCREMENT

alter Table departments
MODIFY department_id int  AUTO_INCREMENT

alter Table doctors
MODIFY doctor_id int PRIMARY KEY  AUTO_INCREMENT

alter Table medications
MODIFY medication_id int PRIMARY KEY  AUTO_INCREMENT

alter Table prescriptions
MODIFY prescription_id int PRIMARY KEY  AUTO_INCREMENT

alter Table appointments
MODIFY appointment_id int AUTO_INCREMENT

--fk

alter Table admissions
add constraint fk_admission_patient
foreign key (patient_id) references patients(patient_id);

alter Table admissions
add constraint fk_admission_room
foreign key (room_id) references rooms(room_id);





