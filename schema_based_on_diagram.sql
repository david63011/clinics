CREATE TABLE patients(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(250),
  date_of_birth DATE,
  PRIMARY KEY(id)
);

CREATE TABLE medical_histories(
  id INT GENERATED ALWAYS AS IDENTITY,
  admitted_at timestamp,
  patient_id INT,
  CONSTRAINT patient_id_fk  FOREIGN KEY (patient_id) REFERENCES patients(id),
  status VARCHAR(250),
  PRIMARY KEY(id)
)

CREATE TABLE invoices(
 id INT GENERATED ALWAYS AS IDENTITY,
 total_amount decimal ,
 generated_at timestamp,
payed_at timestamp,
medical_history_id INT,
 CONSTRAINT medical_history_id_fk  
FOREIGN KEY (medical_history_id)
REFERENCES medical_histories(id),
	PRIMARY KEY(id)
);
