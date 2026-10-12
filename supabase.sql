-- Esquema para Supabase (PostgreSQL). Ejecutar en Supabase > SQL Editor.
-- Equivalente a base_datos.sql (que es para MySQL local).

CREATE TABLE IF NOT EXISTS empleados (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nombres VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100) NOT NULL DEFAULT '',
  edad INT NOT NULL CHECK (edad BETWEEN 1 AND 120)
);

INSERT INTO empleados (nombres, apellido1, apellido2, edad)
SELECT * FROM (VALUES
  ('Ana', 'García', 'López', 29),
  ('Jon', 'Martín', 'Ruiz', 41),
  ('María', 'Pérez', 'Ortega', 33),
  ('Luis', 'Fernández', 'Gómez', 25)
) AS datos(nombres, apellido1, apellido2, edad)
WHERE NOT EXISTS (SELECT 1 FROM empleados);
