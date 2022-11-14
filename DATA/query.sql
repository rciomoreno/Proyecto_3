CREATE DATABASE listas_forbes;

-- creamos una tabla para relacionar forbes_sp y andalucia:

CREATE TABLE IDSPA
SELECT a.ID ID_a, sp.ID ID_sp
FROM andalucia a
INNER JOIN forbes_sp sp
ON a.ID = sp.ID
;