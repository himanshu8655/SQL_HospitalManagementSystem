/*CREATE DATABASE*/
DROP DATABASE IF EXISTS HOSPITAL;
CREATE DATABASE HOSPITAL;
USE HOSPITAL;

/*CREATE TABLES*/

CREATE TABLE Doctor(
    Doctor_ID INT NOT NULL,
    Doctor_name VARCHAR(100) NOT NULL,
    Specialist VARCHAR(255) NOT NULL,
    Contact_no CHAR(12) NOT NULL,
    PRIMARY KEY(Doctor_ID)
);

CREATE TABLE Hospital(
    Hospital_ID INT NOT NULL,
    Doctor_ID INT NOT NULL,
    Hospital_name VARCHAR(100) NOT NULL,
    Hospital_address VARCHAR(255) NOT NULL,
    PRIMARY KEY(Hospital_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

CREATE TABLE Patient (
    Patient_ID INT NOT NULL,
    Patient_name VARCHAR(50) NOT NULL,
    Contact_no CHAR(12),
    Patient_address VARCHAR(255),
    PRIMARY KEY(Patient_ID)
);

CREATE TABLE Appointment(
    Appointment_no INT NOT NULL,
    Patient_ID INT NOT NULL,
	Doctor_ID INT NOT NULL,
    Appointment_date DATE NOT NULL,
    Reason VARCHAR(255) NOT NULL,
    PRIMARY KEY(Appointment_no),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

CREATE TABLE Receipt(
    Receipt_no INT NOT NULL,
    Patient_ID INT NOT NULL,
    Payment_status TINYINT NOT NULL,
    PRIMARY KEY(Receipt_no),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);

CREATE TABLE Payment(
    Payment_ID INT NOT NULL,
    Receipt_no INT NOT NULL,
    Payment_METHOD ENUM('CASH','CREDIT CARD','ELECTRONIC') NOT NULL,
    Amount INT NOT NULL,
    PRIMARY KEY(Payment_ID),
    FOREIGN KEY (Receipt_no) REFERENCES Receipt(Receipt_no)
);

/* INSERT DATA*/

INSERT INTO Doctor (Doctor_ID, Doctor_name, Specialist, Contact_no) VALUES
(1, 'Dr. Smith', 'Cardiologist', '555-123-4567'),
(2, 'Dr. Johnson', 'Orthopedic Surgeon', '555-987-6543'),
(3, 'Dr. Davis', 'Pediatrician', '555-555-5555'),
(4, 'Dr. Miller', 'Neurologist', '555-444-3333'),
(5, 'Dr. White', 'Dermatologist', '555-777-8888'),
(6, 'Dr. Taylor', 'Ophthalmologist', '555-111-2222'),
(7, 'Dr. Hall', 'Gynecologist', '555-999-0000'),
(8, 'Dr. Wilson', 'Urologist', '555-666-7777'),
(9, 'Dr. Moore', 'Endocrinologist', '555-234-5678'),
(10, 'Dr. Carter', 'Psychiatrist', '555-876-5432'),
(11, 'Dr. Walker', 'Oncologist', '555-987-6543'),
(12, 'Dr. Hayes', 'ENT Specialist', '555-234-5678'),
(13, 'Dr. Turner', 'Cardiothoracic Surgeon', '555-555-5555'),
(14, 'Dr. Powell', 'Rheumatologist', '555-444-3333'),
(15, 'Dr. Simmons', 'Pulmonologist', '555-876-5432'),
(16, 'Dr. Turner', 'Cardiologist', '555-765-4321'),
(17, 'Dr. Parker', 'Orthopedic Surgeon', '555-987-6543'),
(18, 'Dr. Collins', 'Pediatrician', '555-876-5432'),
(19, 'Dr. Hughes', 'Neurologist', '555-765-4321'),
(20, 'Dr. Reed', 'Dermatologist', '555-987-6543'),
(21, 'Dr. Stewart', 'Ophthalmologist', '555-876-5432'),
(22, 'Dr. Barnes', 'Gynecologist', '555-765-4321'),
(23, 'Dr. Powell', 'Urologist', '555-987-6543'),
(24, 'Dr. Simmons', 'Endocrinologist', '555-876-5432'),
(25, 'Dr. Tucker', 'Psychiatrist', '555-765-4321'),
(26, 'Dr. Russell', 'Oncologist', '555-987-6543'),
(27, 'Dr. Griffin', 'ENT Specialist', '555-876-5432'),
(28, 'Dr. Dixon', 'Cardiothoracic Surgeon', '555-765-4321'),
(29, 'Dr. Allison', 'Rheumatologist', '555-987-6543'),
(30, 'Dr. Blake', 'Pulmonologist', '555-876-5432'),
(31, 'Dr. Maldonado', 'Cardiologist', '555-765-4321'),
(32, 'Dr. Harper', 'Orthopedic Surgeon', '555-987-6543'),
(33, 'Dr. Weaver', 'Pediatrician', '555-876-5432'),
(34, 'Dr. Patterson', 'Neurologist', '555-765-4321'),
(35, 'Dr. Sims', 'Dermatologist', '555-987-6543'),
(36, 'Dr. Lopez', 'Ophthalmologist', '555-876-5432'),
(37, 'Dr. Hill', 'Gynecologist', '555-765-4321'),
(38, 'Dr. Turner', 'Urologist', '555-987-6543'),
(39, 'Dr. Carter', 'Endocrinologist', '555-876-5432'),
(40, 'Dr. Walker', 'Psychiatrist', '555-765-4321'),
(41, 'Dr. Hayes', 'Oncologist', '555-987-6543'),
(42, 'Dr. Powell', 'ENT Specialist', '555-876-5432'),
(43, 'Dr. Russell', 'Cardiothoracic Surgeon', '555-765-4321'),
(44, 'Dr. Griffin', 'Rheumatologist', '555-987-6543'),
(45, 'Dr. Dixon', 'Pulmonologist', '555-876-5432'),
(46, 'Dr. Griffin', 'Cardiologist', '555-765-4321'),
(47, 'Dr. Dixon', 'Orthopedic Surgeon', '555-987-6543'),
(48, 'Dr. Turner', 'Pediatrician', '555-876-5432'),
(49, 'Dr. Parker', 'Neurologist', '555-765-4321'),
(50, 'Dr. Collins', 'Dermatologist', '555-987-6543');

INSERT INTO Hospital (Hospital_ID, Doctor_ID, Hospital_name, Hospital_address) VALUES
(1, 1, 'City General Hospital', '123 Main Street, Cityville'),
(2, 2, 'Children''s Hospital', '456 Oak Avenue, Townsville'),
(3, 3, 'Sunset Medical Center', '789 Maple Lane, Villagetown'),
(4, 4, 'Unity Hospital', '101 Pine Road, Cityburg'),
(5, 5, 'Metropolitan Health Center', '202 Cedar Street, Megacity'),
(6, 6, 'Greenfield Clinic', '303 Elm Avenue, Townburg'),
(7, 7, 'Hilltop Medical Center', '404 Birch Lane, Cityville'),
(8, 8, 'Riverfront Hospital', '505 Oak Road, Riverside'),
(9, 9, 'Sunrise Healthcare', '606 Pine Avenue, Townsville'),
(10, 10, 'Central Regional Hospital', '707 Cedar Lane, Cityburg'),
(11, 11, 'Valley General Hospital', '808 Elm Street, Villagetown'),
(12, 12, 'Oceanfront Medical Center', '909 Maple Avenue, Seaside'),
(13, 13, 'Meadowview Clinic', '111 Birch Road, Cityville'),
(14, 14, 'Skyline Hospital', '222 Oak Lane, Hilltop'),
(15, 15, 'Countryside Health Center', '333 Pine Avenue, Townburg'),
(16, 16, 'Green Valley Medical Center', '444 Oak Road, Cityville'),
(17, 17, 'Sunshine Hospital', '555 Cedar Lane, Hilltop'),
(18, 18, 'Bayside Medical Center', '666 Pine Street, Seaside'),
(19, 19, 'Meadowlark General Hospital', '777 Elm Avenue, Townburg'),
(20, 20, 'Harmony Health Clinic', '888 Birch Road, Riverside'),
(21, 21, 'Golden State Medical Center', '999 Maple Lane, Cityburg'),
(22, 22, 'Pinecrest Healthcare', '1010 Oak Street, Villagetown'),
(23, 23, 'Evergreen Hospital', '1111 Cedar Road, Cityville'),
(24, 24, 'Sunnydale Medical Center', '1212 Pine Lane, Hilltop'),
(25, 25, 'Central City General Hospital', '1313 Elm Avenue, Megacity'),
(26, 26, 'Riverbend Clinic', '1414 Oak Road, Riverside'),
(27, 27, 'Cascade Health Center', '1515 Cedar Lane, Cityburg'),
(28, 28, 'Blue Sky Medical Center', '1616 Pine Street, Townsville'),
(29, 29, 'Mountainview Hospital', '1717 Elm Road, Hilltop'),
(30, 30, 'Serenity Healthcare', '1818 Birch Lane, Cityville'),
(31, 31, 'Lakefront Medical Center', '1919 Maple Avenue, Lakeside'),
(32, 32, 'Silver Oak Hospital', '2020 Cedar Lane, Cityburg'),
(33, 33, 'Haven Health Clinic', '2121 Pine Road, Hilltop'),
(34, 34, 'Crestview General Hospital', '2222 Elm Street, Cityville'),
(35, 35, 'Maplewood Medical Center', '2323 Oak Avenue, Townburg'),
(36, 36, 'Pacific Healthcare', '2424 Birch Road, Riverside'),
(37, 37, 'Prairieview Clinic', '2525 Pine Lane, Cityburg'),
(38, 38, 'Sunrise Medical Center', '2626 Elm Road, Villagetown'),
(39, 39, 'Oceanview Hospital', '2727 Cedar Street, Seaside'),
(40, 40, 'Hillside Healthcare', '2828 Oak Lane, Hilltop'),
(41, 41, 'Magnolia Medical Center', '2929 Pine Avenue, Cityville'),
(42, 42, 'Aspen Healthcare', '3030 Cedar Road, Riverside'),
(43, 43, 'Harborview Hospital', '3131 Elm Lane, Cityburg'),
(44, 44, 'Emerald City General Hospital', '3232 Birch Street, Megacity'),
(45, 45, 'Summit Health Center', '3333 Oak Road, Townsville'),
(46, 46, 'Tranquil Medical Center', '3434 Pine Lane, Cityville'),
(47, 47, 'Highland Hospital', '3535 Elm Avenue, Hilltop'),
(48, 48, 'Groveview Clinic', '3636 Oak Road, Riverside'),
(49, 49, 'Majestic General Hospital', '3737 Cedar Lane, Cityburg'),
(50, 50, 'Sapphire Medical Center', '3838 Birch Road, Villagetown');

INSERT INTO Patient (Patient_ID, Patient_name, Contact_no, Patient_address) VALUES
(1, 'John Doe', '555-123-4567', '123 Main Street, Cityville'),
(2, 'Jane Smith', '555-987-6543', '456 Oak Avenue, Townsville'),
(3, 'David Johnson', '555-555-5555', '789 Pine Lane, Hilltop'),
(4, 'Emily Davis', '555-444-3333', '101 Elm Road, Riverside'),
(5, 'Michael Miller', '555-777-8888', '202 Birch Street, Megacity'),
(6, 'Olivia White', '555-111-2222', '303 Cedar Avenue, Villagetown'),
(7, 'Daniel Taylor', '555-999-0000', '404 Maple Road, Cityburg'),
(8, 'Sophia Hall', '555-666-7777', '505 Oak Lane, Riverside'),
(9, 'Matthew Wilson', '555-234-5678', '606 Pine Street, Townsville'),
(10, 'Ava Moore', '555-876-5432', '707 Elm Lane, Hilltop'),
(11, 'Ethan Carter', '555-987-6543', '808 Cedar Road, Cityville'),
(12, 'Isabella Walker', '555-234-5678', '909 Pine Avenue, Seaside'),
(13, 'Mason Hayes', '555-555-5555', '111 Birch Lane, Cityville'),
(14, 'Emma Lopez', '555-444-3333', '222 Oak Road, Hilltop'),
(15, 'Noah Hill', '555-876-5432', '333 Cedar Lane, Townburg'),
(16, 'Abigail Turner', '555-765-4321', '444 Pine Road, Riverside'),
(17, 'James Parker', '555-987-6543', '555 Elm Avenue, Townsville'),
(18, 'Avery Collins', '555-876-5432', '666 Oak Lane, Hilltop'),
(19, 'Ella Hughes', '555-765-4321', '777 Cedar Road, Cityville'),
(20, 'Logan Reed', '555-987-6543', '888 Maple Lane, Megacity'),
(21, 'Sofia Stewart', '555-876-5432', '999 Birch Street, Villagetown'),
(22, 'Elijah Barnes', '555-765-4321', '1010 Pine Avenue, Cityburg'),
(23, 'Grace Powell', '555-987-6543', '1111 Elm Road, Riverside'),
(24, 'Jackson Simmons', '555-876-5432', '1212 Cedar Lane, Cityville'),
(25, 'Lily Foster', '555-765-4321', '1313 Maple Road, Hilltop'),
(26, 'Lucas Russell', '555-987-6543', '1414 Oak Lane, Cityburg'),
(27, 'Scarlett Griffin', '555-876-5432', '1515 Pine Street, Megacity'),
(28, 'Henry Dixon', '555-765-4321', '1616 Elm Road, Villagetown'),
(29, 'Mia Allison', '555-987-6543', '1717 Cedar Avenue, Cityville'),
(30, 'Aiden Blake', '555-876-5432', '1818 Birch Road, Riverside'),
(31, 'Evelyn Maldonado', '555-765-4321', '1919 Pine Avenue, Cityville'),
(32, 'Liam Harper', '555-987-6543', '2020 Cedar Lane, Hilltop'),
(33, 'Chloe Weaver', '555-876-5432', '2121 Oak Road, Riverside'),
(34, 'Zachary Patterson', '555-765-4321', '2222 Elm Street, Cityburg'),
(35, 'Nora Sims', '555-987-6543', '2323 Birch Lane, Townsville'),
(36, 'Alexander Lopez', '555-876-5432', '2424 Pine Road, Megacity'),
(37, 'Penelope Hill', '555-765-4321', '2525 Cedar Avenue, Villagetown'),
(38, 'Christopher Turner', '555-987-6543', '2626 Elm Lane, Cityville'),
(39, 'Madison Carter', '555-876-5432', '2727 Oak Road, Hilltop'),
(40, 'Leo Walker', '555-765-4321', '2828 Birch Street, Riverside'),
(41, 'Stella Hayes', '555-987-6543', '2929 Pine Lane, Cityburg'),
(42, 'Hudson Barnes', '555-876-5432', '3030 Cedar Road, Megacity'),
(43, 'Luna Powell', '555-765-4321', '3131 Elm Lane, Villagetown'),
(44, 'Grayson Simmons', '555-987-6543', '3232 Oak Avenue, Cityville'),
(45, 'Aria Foster', '555-876-5432', '3333 Cedar Road, Hilltop'),
(46, 'Carter Russell', '555-765-4321', '3434 Pine Lane, Cityville'),
(47, 'Scarlett Griffin', '555-987-6543', '3535 Elm Avenue, Hilltop'),
(48, 'Mason Dixon', '555-876-5432', '3636 Oak Road, Riverside'),
(49, 'Zoe Allison', '555-765-4321', '3737 Cedar Lane, Cityburg'),
(50, 'Sebastian Blake', '555-987-6543', '3838 Birch Road, Villagetown');

INSERT INTO Appointment (Appointment_no, Patient_ID, Doctor_ID, Appointment_date, Reason) VALUES
(1, 1, 1, '2023-05-15', 'Annual checkup'),
(2, 2, 1, '2023-05-15', 'Vaccination'),
(3, 3, 1, '2023-05-15', 'Orthopedic consultation'),
(4, 4, 2, '2023-05-15', 'Neurology follow-up'),
(5, 5, 3, '2023-05-15', 'Dermatology appointment'),
(6, 6, 2, '2023-05-15', 'Eye examination'),
(7, 7, 2, '2023-05-15', 'Gynecology checkup'),
(8, 8, 3, '2023-05-15', 'Urology consultation'),
(9, 9, 9, '2023-06-12', 'Endocrinology follow-up'),
(10, 10, 10, '2023-06-15', 'Psychiatry session'),
(11, 11, 11, '2023-06-19', 'Oncology consultation'),
(12, 12, 12, '2023-06-22', 'ENT appointment'),
(13, 13, 13, '2023-06-26', 'Cardiothoracic surgery consultation'),
(14, 14, 14, '2023-06-29', 'Rheumatology follow-up'),
(15, 15, 15, '2023-07-03', 'Pulmonology checkup'),
(16, 16, 16, '2023-07-07', 'Cardiology consultation'),
(17, 17, 17, '2023-07-10', 'Orthopedic follow-up'),
(18, 18, 18, '2023-07-14', 'Pediatric checkup'),
(19, 19, 19, '2023-07-17', 'Neurology appointment'),
(20, 20, 20, '2023-07-21', 'Dermatology follow-up'),
(21, 21, 21, '2023-07-24', 'Eye examination'),
(22, 22, 22, '2023-07-28', 'Gynecology consultation'),
(23, 23, 23, '2023-08-01', 'Urology checkup'),
(24, 24, 24, '2023-08-04', 'Endocrinology appointment'),
(25, 25, 25, '2023-08-08', 'Psychiatry follow-up'),
(26, 26, 26, '2023-08-11', 'Oncology checkup'),
(27, 27, 27, '2023-08-15', 'ENT consultation'),
(28, 28, 28, '2023-08-18', 'Cardiothoracic surgery follow-up'),
(29, 29, 29, '2023-08-22', 'Rheumatology appointment'),
(30, 30, 30, '2023-08-25', 'Pulmonology consultation'),
(31, 31, 31, '2023-08-29', 'Cardiology follow-up'),
(32, 32, 32, '2023-09-01', 'Orthopedic consultation'),
(33, 33, 33, '2023-09-05', 'Pediatric checkup'),
(34, 34, 34, '2023-09-08', 'Neurology appointment'),
(35, 35, 35, '2023-09-12', 'Dermatology follow-up'),
(36, 36, 36, '2023-09-15', 'Eye examination'),
(37, 37, 37, '2023-09-19', 'Gynecology consultation'),
(38, 38, 38, '2023-09-22', 'Urology checkup'),
(39, 39, 39, '2023-09-26', 'Endocrinology appointment'),
(40, 40, 40, '2023-09-29', 'Psychiatry follow-up'),
(41, 41, 41, '2023-10-03', 'Oncology checkup'),
(42, 42, 42, '2023-10-06', 'ENT consultation'),
(43, 43, 43, '2023-10-10', 'Cardiothoracic surgery follow-up'),
(44, 44, 44, '2023-10-13', 'Rheumatology appointment'),
(45, 45, 45, '2023-10-17', 'Pulmonology consultation'),
(46, 46, 46, '2023-10-20', 'Cardiology follow-up'),
(47, 47, 47, '2023-10-24', 'Orthopedic consultation'),
(48, 48, 48, '2023-10-27', 'Pediatric checkup'),
(49, 49, 49, '2023-10-31', 'Neurology appointment'),
(50, 50, 50, '2023-11-03', 'Dermatology follow-up');

INSERT INTO Receipt (Receipt_no, Patient_ID, Payment_status) VALUES
(1, 1, 1),  -- Payment successful
(2, 2, 1),  -- Payment successful
(3, 3, 0),  -- Payment pending
(4, 4, 1),  -- Payment successful
(5, 5, 0),  -- Payment pending
(6, 6, 1),  -- Payment successful
(7, 7, 1),  -- Payment successful
(8, 8, 1),  -- Payment successful
(9, 9, 0),  -- Payment pending
(10, 10, 1),  -- Payment successful
(11, 11, 0),  -- Payment pending
(12, 12, 1),  -- Payment successful
(13, 13, 1),  -- Payment successful
(14, 14, 1),  -- Payment successful
(15, 15, 0),  -- Payment pending
(16, 16, 1),  -- Payment successful
(17, 17, 1),  -- Payment successful
(18, 18, 0),  -- Payment pending
(19, 19, 1),  -- Payment successful
(20, 20, 0),  -- Payment pending
(21, 21, 1),  -- Payment successful
(22, 22, 1),  -- Payment successful
(23, 23, 1),  -- Payment successful
(24, 24, 0),  -- Payment pending
(25, 25, 1),  -- Payment successful
(26, 26, 0),  -- Payment pending
(27, 27, 1),  -- Payment successful
(28, 28, 1),  -- Payment successful
(29, 29, 1),  -- Payment successful
(30, 30, 0),  -- Payment pending
(31, 31, 1),  -- Payment successful
(32, 32, 1),  -- Payment successful
(33, 33, 0),  -- Payment pending
(34, 34, 1),  -- Payment successful
(35, 35, 0),  -- Payment pending
(36, 36, 1),  -- Payment successful
(37, 37, 1),  -- Payment successful
(38, 38, 1),  -- Payment successful
(39, 39, 0),  -- Payment pending
(40, 40, 1),  -- Payment successful
(41, 41, 0),  -- Payment pending
(42, 42, 1),  -- Payment successful
(43, 43, 1),  -- Payment successful
(44, 44, 1),  -- Payment successful
(45, 45, 0),  -- Payment pending
(46, 46, 1),  -- Payment successful
(47, 47, 1),  -- Payment successful
(48, 48, 0),  -- Payment pending
(49, 49, 1),  -- Payment successful
(50, 50, 0);  -- Payment pending

INSERT INTO Payment (Payment_ID, Receipt_no, Payment_METHOD, Amount) VALUES
(1, 1, 'CASH', 50),
(2, 2, 'CREDIT CARD', 100),
(3, 3, 'ELECTRONIC', 75),
(4, 4, 'CASH', 120),
(5, 5, 'CREDIT CARD', 90),
(6, 6, 'ELECTRONIC', 60),
(7, 7, 'CASH', 80),
(8, 8, 'CREDIT CARD', 110),
(9, 9, 'ELECTRONIC', 95),
(10, 10, 'CASH', 70),
(11, 11, 'ELECTRONIC', 85),
(12, 12, 'CASH', 105),
(13, 13, 'CREDIT CARD', 55),
(14, 14, 'ELECTRONIC', 65),
(15, 15, 'CASH', 130),
(16, 16, 'ELECTRONIC', 75),
(17, 17, 'CASH', 110),
(18, 18, 'CREDIT CARD', 90),
(19, 19, 'ELECTRONIC', 120),
(20, 20, 'CASH', 100),
(21, 21, 'CREDIT CARD', 80),
(22, 22, 'ELECTRONIC', 105),
(23, 23, 'CASH', 95),
(24, 24, 'CREDIT CARD', 65),
(25, 25, 'ELECTRONIC', 85),
(26, 26, 'CASH', 75),
(27, 27, 'CREDIT CARD', 110),
(28, 28, 'ELECTRONIC', 90),
(29, 29, 'CASH', 120),
(30, 30, 'CREDIT CARD', 100),
(31, 31, 'ELECTRONIC', 85),
(32, 32, 'CASH', 110),
(33, 33, 'CREDIT CARD', 95),
(34, 34, 'ELECTRONIC', 120),
(35, 35, 'CASH', 100),
(36, 36, 'CREDIT CARD', 80),
(37, 37, 'ELECTRONIC', 105),
(38, 38, 'CASH', 90),
(39, 39, 'CREDIT CARD', 65),
(40, 40, 'ELECTRONIC', 75),
(41, 41, 'CASH', 105),
(42, 42, 'ELECTRONIC', 55),
(43, 43, 'CREDIT CARD', 65),
(44, 44, 'ELECTRONIC', 75),
(45, 45, 'CASH', 110),
(46, 46, 'CASH', 100),
(47, 47, 'CREDIT CARD', 80),
(48, 48, 'ELECTRONIC', 95),
(49, 49, 'CASH', 120),
(50, 50, 'CREDIT CARD', 110);

/*==== Starting a Transaction ====*/
START TRANSACTION;
update appointment set appointment_date = '2023-05-16' where appointment_no = 1;
select * from appointment;
savepoint sp1;
/* Forgot to add a where clause */
delete from appointment;
savepoint sp2;
/* rollback to previous savepoint */
rollback to sp1;
delete from appointment where appointment_id = 2;
savepoint sp3;
commit;

/* === QUERIES - subquery, aggregate function, join === */
	
    /*get average payment received from customer for analysis*/
	select AVG(amount) as AVG_PAYMENT from payment;
    
    /*GET NAMES OF DOCTOR WHO HAS APPOINTMENT MORE THAN A GIVEN THRESHHOLD VALUE*/
	SET @THRESHHOLD := 2;
    select d.Doctor_name,count(*) as NO_OF_APPOINTMENT from doctor d 
    inner join appointment a on d.Doctor_ID = a.Doctor_ID
    group by d.Doctor_ID 
    having count(*)>=@THRESHHOLD;
    
    /* GET SPECIALISTS WHICH ARE MORE IN DEMAND BY GETTING NO OF APPOINTMENTS*/
	SELECT d.specialist, COUNT(a.appointment_no) AS appointment_count FROM doctor d 
	INNER JOIN appointment a ON d.doctor_id = a.doctor_id
	GROUP BY d.specialist
	ORDER BY appointment_count DESC;		
    
/* ==== CREATE A VIEW WITH PATIENT NAME AND CONTACT NO WHOSE PAYMENT IS PENDING  ====*/
CREATE VIEW PATIENT_PAYMENT_STATUS as SELECT p.patient_name,r.payment_status,p.contact_no, r.receipt_no
FROM receipt r 
INNER JOIN
patient p on r.Patient_ID = p.Patient_ID 
where r.payment_status = 0;

