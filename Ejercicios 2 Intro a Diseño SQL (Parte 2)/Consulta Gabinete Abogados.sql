CREATE TABLE Cliente (
    ID_DNI VARCHAR(10) PRIMARY KEY NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(200) NOT NULL
);

CREATE TABLE Asunto (
    ID_Num_Expediente VARCHAR(20) PRIMARY KEY,
    Periodo_Inicio DATE NOT NULL,
    Periodo_Final DATE NOT NULL,
    Estado VARCHAR(50) NOT NULL,
    ID_DNI_Cliente VARCHAR(10) REFERENCES Cliente(ID_DNI) NOT NULL
);

CREATE TABLE Procurador (
    ID_DNI VARCHAR(10) PRIMARY KEY NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(200) NOT NULL
);

CREATE TABLE Asunto_Procurador (
    ID_Asunto_Procurador SERIAL PRIMARY KEY,
    Num_Expediente_Asunto VARCHAR(20) REFERENCES Asunto(ID_Num_Expediente) NOT NULL,
    DNI_Procurador VARCHAR(10) REFERENCES Procurador(ID_DNI) NOT NULL
);
