CREATE TABLE jugador(
  codigo_jugador INT PRIMARY KEY,
  nombre_jugador VARCHAR(100) NOT NULL,
  dorsal_jugador INT NOT NULL,
  posicion_jugador VARCHAR(100) NOT NULL,
  codigo_equipo INT NOT NULL,
  CONSTRAINT fk_cod_eq FOREIGN KEY (codigo_equipo) REFERENCES equipo (codigo_equipo)
);