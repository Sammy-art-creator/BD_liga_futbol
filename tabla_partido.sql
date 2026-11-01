CREATE TABLE partido (
  codigo                  INT PRIMARY KEY,
  fecha                   DATE NOT NULL,
  goles_local             INT,
  goles_visitante         INT,
  codigo_equipo_local     INT NOT NULL,
  codigo_equipo_visitante INT NOT NULL,
  FOREIGN KEY (codigo_equipo_local)     REFERENCES equipo(codigo),
  FOREIGN KEY (codigo_equipo_visitante) REFERENCES equipo(codigo),
  CHECK (codigo_equipo_local <> codigo_equipo_visitante)
);