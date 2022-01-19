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

CREATE TABLE invoices (
    id INT GENERATED ALWAYS AS IDENTITY,
    total_amount DECIMAL,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_histories_id INT,
    PRIMARY KEY(id),
    CONSTRAINT fk_medical_histories_id FOREIGN KEY(medical_histories_id) REFERENCES medical_histories(id)
);

CREATE INDEX invoices_medical_histories_id ON invoices(medical_histories_id);

CREATE TABLE invoice_items (
    id INT GENERATED ALWAYS AS IDENTITY,
    unit_price DECIMAL,
    quantity INT,
    total_price DECIMAL,
    invoice_id INT,
    treatment_id INT,
    CONSTRAINT fk_invoice_id FOREIGN KEY(invoice_id) REFERENCES invoices(id),
    CONSTRAINT fk_treatment_id FOREIGN KEY(treatment_id) REFERENCES treatments(id)
);


CREATE INDEX invoice_items_invoice_id ON invoice_items(invoice_id);
CREATE INDEX invoice_items_invoice_id ON invoice_items(treatment_id);