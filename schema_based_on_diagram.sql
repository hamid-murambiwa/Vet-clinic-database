CREATE DATABASE clinic;

CREATE TABLE patients (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    date_of_birth DATE,
    PRIMARY KEY(id)
);

CREATE TABLE medical_histories (
    id INT GENERATED ALWAYS AS IDENTITY,
    admitted_at TIMESTAMP,
    status VARCHAR(100),
    patient_id INT,
    PRIMARY KEY(id),
    CONSTRAINT fk_patients_id FOREIGN KEY(patient_id) REFERENCES patients(id)
);

CREATE INDEX medical_histories_patient_id ON medical_histories(patient_id);

CREATE TABLE treatments (
    id INT GENERATED ALWAYS AS IDENTITY,
    type VARCHAR(100),
    name VARCHAR(100),
    PRIMARY KEY(id)
);

