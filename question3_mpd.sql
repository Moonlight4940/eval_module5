CREATE TABLE IF NOT EXISTS proprietaire (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255),
    adresse TEXT,
    tel VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS bien (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    taille DECIMAL NOT NULL,
    adresse TEXT,
    prix_location DECIMAL,
    type TEXT,
    proprietaire_id INTEGER,
    FOREIGN KEY(proprietaire_id) REFERENCES proprietaire(id)
);

CREATE TABLE IF NOT EXISTS contrat (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    duree INTEGER,
    pourcentage DECIMAL(5,2),
    bien_id INTEGER,
    FOREIGN KEY(bien_id) REFERENCES bien(id)
);

CREATE TABLE IF NOT EXISTS bail (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date_debut DATE,
    date_fin DATE,
    bien_id INTEGER,
    locataire_id INTEGER,
    FOREIGN KEY(bien_id) REFERENCES bien(id),
    FOREIGN KEY(locataire_id) REFERENCES locataire(id)
);

CREATE TABLE IF NOT EXISTS locataire (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255),
    adresse TEXT,
    tel VARCHAR(255)
);

