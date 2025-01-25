CREATE TABLE IF NOT EXISTS medecin(
id_medecin INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS consultation(
id_consultation INTEGER PRIMARY KEY AUTOINCREMENT,
date DATE,
prix DECIMAL(10, 2) NOT NULL,
id_medecin INTEGER,
FOREIGN KEY(id_medecin) REFERENCES medecin(id)
);

CREATE TABLE malade (
id_malade INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255) NOT NULL
);

CREATE TABLE symptome (
id_symptom INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255) NOT NULL
);

CREATE TABLE maladie (
id_maladie INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255) NOT NULL
);

CREATE TABLE conserne (
id_consultation INT,
id_malade INT,
FOREIGN KEY(id_consultation) REFERENCES consultation(id_consultation),
FOREIGN KEY(id_malade) REFERENCES malade(id_malade)
);

CREATE TABLE detecter (
id_consultation INT,
id_symptom INT,
FOREIGN KEY(id_consultation) REFERENCES consultation(id_consultation),
FOREIGN KEY(id_symptom) REFERENCES symptom(id_symptom)
);

CREATE TABLE diagnostiquer (
id_consultation INT,
id_maladie INT,
FOREIGN KEY(id_consultation) REFERENCES consultation(id_consultation),
FOREIGN KEY(id_maladie) REFERENCES symptom(id_maladie)
);

CREATE TABLE associer (
id_symptom INT,
id_maladie INT,
FOREIGN KEY(id_symptom) REFERENCES symptom(id_symptom),
FOREIGN KEY(id_maladie) REFERENCES maladie(id_maladie)
);

