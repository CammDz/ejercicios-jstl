CREATE DATABASE IF NOT EXISTS empleados CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE empleados;
CREATE TABLE IF NOT EXISTS empleados (
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 nombres VARCHAR(100) NOT NULL,
 apellido1 VARCHAR(100) NOT NULL,
 apellido2 VARCHAR(100) NOT NULL DEFAULT '',
 edad INT UNSIGNED NOT NULL
);
INSERT INTO empleados (nombres, apellido1, apellido2, edad)
SELECT * FROM (
  SELECT 'Ana' AS nombres, 'García' AS apellido1, 'López' AS apellido2, 29 AS edad UNION ALL
  SELECT 'Jon', 'Martín', 'Ruiz', 41 UNION ALL
  SELECT 'María', 'Pérez', 'Ortega', 33 UNION ALL
  SELECT 'Luis', 'Fernández', 'Gómez', 25
) AS datos
WHERE NOT EXISTS (SELECT 1 FROM empleados);
