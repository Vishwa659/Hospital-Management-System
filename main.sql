-- Create Patients Table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    admission_date DATE
);

-- Create Doctors Table
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone VARCHAR(15)
);

-- Create Appointments Table
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    diagnosis VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Create Prescriptions Table
CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY,
    appointment_id INT,
    medicine VARCHAR(100),
    dosage VARCHAR(100),
    instructions TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- Insert sample data
INSERT INTO Patients VALUES (1, 'Alice', 30, 'Female', '2024-06-10');
INSERT INTO Patients VALUES (2, 'Bob', 45, 'Male', '2024-06-12');

INSERT INTO Doctors VALUES (1, 'Dr. Smith', 'Cardiologist', '1234567890');
INSERT INTO Doctors VALUES (2, 'Dr. Ray', 'Dermatologist', '0987654321');

INSERT INTO Appointments VALUES (1, 1, 1, '2024-06-11', 'High Blood Pressure');
INSERT INTO Appointments VALUES (2, 2, 2, '2024-06-13', 'Skin Allergy');

INSERT INTO Prescriptions VALUES (1, 1, 'Amlodipine', '5mg daily', 'Take after breakfast');
INSERT INTO Prescriptions VALUES (2, 2, 'Cetirizine', '10mg daily', 'Take before sleep');
