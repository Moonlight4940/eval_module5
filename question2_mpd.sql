CREATE TABLE IF NOT EXISTS medecin(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS consultation(
id INTEGER PRIMARY KEY AUTOINCREMENT,
date DATE,
prix DECIMAL(10, 2) NOT NULL,
medecin_id INTEGER,
FOREIGN KEY(medecin_id) REFERENCES medecin(id)
);

CREATE TABLE malade (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255) NOT NULL
);

CREATE TABLE symptome (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255) NOT NULL
);

CREATE TABLE maladie (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255) NOT NULL
);

CREATE TABLE conserne (
consultation_id INT,
malade_id INT,
FOREIGN KEY(consultation_id) REFERENCES consultation(id),
FOREIGN KEY(malade_id) REFERENCES malade(id)
);

CREATE TABLE detecter (
consultation_id INT,
symptom_id INT,
FOREIGN KEY(consultation_id) REFERENCES consultation(id),
FOREIGN KEY(symptom_id) REFERENCES symptom(id)
);

CREATE TABLE diagnostiquer (
consultation_id INT,
maladie_id INT,
FOREIGN KEY(consultation_id) REFERENCES consultation(id),
FOREIGN KEY(maladie_id) REFERENCES symptom(id)
);

CREATE TABLE associer (
symptom_id INT,
maladie_id INT,
FOREIGN KEY(symptom_id) REFERENCES symptom(id),
FOREIGN KEY(maladie_id) REFERENCES maladie(id)
);

