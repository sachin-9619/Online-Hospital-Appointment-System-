-- ==========================================
-- Online Hospital Appointment System
-- Final SQL File
-- ==========================================

-- Create Database
CREATE DATABASE IF NOT EXISTS college_project;
USE college_project;

-- ==========================================
-- DOCTOR TABLE (Simple Login)
-- Only: id, name, code
-- ==========================================
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    doctor_code VARCHAR(20) NOT NULL
);

-- Insert Single Doctor
INSERT INTO doctors (doctor_id, doctor_name, doctor_code)
VALUES (1, 'Sachin', '964511');

-- ==========================================
-- APPOINTMENT TABLE
-- ==========================================
CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_date DATE NOT NULL,
    patient_email VARCHAR(100),
    patient_name VARCHAR(100),
    slot_id INT NOT NULL,
    doctor_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_slot
        FOREIGN KEY (slot_id)
        REFERENCES slots(slot_id)
);

-- ==========================================
-- SAMPLE APPOINTMENT DATA (Optional)
-- ==========================================
INSERT INTO appointments
(appointment_date, patient_email, patient_name, slot_id)
VALUES
('2025-06-25', 'sachin@gmail.com', 'Sachin', 3);


