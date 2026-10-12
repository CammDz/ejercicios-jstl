# Ocho ejercicios JSTL
Implementación de Guia-JSTL.pdf para Tomcat 9 y JSTL 1.2 (javax). No contiene scriptlets Java. Las directivas JSP e inclusiones sí son necesarias.

## Instalación
1. Extrae la carpeta JSTL del ZIP.
2. Añade a WEB-INF/lib la implementación JSTL 1.2: javax.servlet:jstl:1.2 (jstl-1.2.jar).
3. Para el ejercicio 8 añade MySQL Connector/J compatible con tu versión de Java. El driver usado es com.mysql.cj.jdbc.Driver. No uses el antiguo mysql-connector-java-5.1 de la guía con esta configuración.
4. Ejecuta base_datos.sql en MySQL o phpMyAdmin.
5. Edita WEB-INF/jspf/conexion.jspf: servidor, puerto, usuario y contraseña. La configuración inicial es localhost:3306, root y contraseña vacía, exclusivamente para un entorno local de práctica.
6. Copia la carpeta JSTL dentro de webapps de Tomcat 9 y arranca/reinicia Tomcat.
7. Abre http://localhost:8080/JSTL/ (ajusta el puerto si lo cambiaste).
8. No uses Live Server de VS Code: el proyecto necesita Tomcat para procesar JSP.

## Archivos por ejercicio
1. Ejercicios/1/index.jsp: cadena literal y suma con c:out.
2. Ejercicios/2/index.jsp, ProcesarC.jsp y set1.jsp: formulario, variables con c:set y salida con c:out.
3. Ejercicios/3/index.jsp y Procesarif.jsp: validación del nombre y primer apellido con c:if y c:redirect.
4. Ejercicios/4/index.jsp y ProcesarC2.jsp: selección Java/C++/Perl con choose/when/otherwise. Los textos se conservan como mensajes del ejercicio, no como valoraciones técnicas.
5. Ejercicios/5/index.jsp: tres botones y captura con c:catch. Se sustituye Integer.parseInt de la guía por fmt:parseNumber para evitar scriptlets. La ausencia del parámetro dispara deliberadamente un error de conversión; no se afirma que ambos analizadores tengan la misma semántica para entradas arbitrarias.
6. Ejercicios/6/index.jsp: 1,3,5,7,9,11,13,15,17,19,21,23. Señala primera iteración y quinta (9).
7. Ejercicios/7/index.jsp y ResultTokens.jsp: separación por delimitadores. Cada carácter de delims actúa como separador, no se trata de un separador multicaracter literal.
8. Ejercicios/8/index.jsp, Procesarinfo.jsp y listar.jsp: inserción parametrizada y listado. Se usa nombre como campo del formulario y nombres como columna SQL. Redirección tras guardar para no repetir la inserción al refrescar el listado.

## Pruebas manuales
- Ejercicio 1: deben aparecer 1+2+3 y 6.
- Ejercicio 2: enviar nombre y dos apellidos, comprobar los tres resultados.
- Ejercicio 3: nombre vacío muestra Nombre obligatorio; apellido1 vacío muestra Primer apellido obligatorio; apellido2 es opcional.
- Ejercicio 4: probar las tres opciones y la opción vacía.
- Ejercicio 5: prueba genera un error; 1234 muestra el número; parámetro ausente genera un error.
- Ejercicio 6: verificar doce filas y los mensajes en 1 y 9.
- Ejercicio 7: Java,HTML,CSS y delimitador coma producen tres elementos.
- Ejercicio 8: registrar un empleado, revisar la tabla y refrescar el listado: no debe repetirse la inserción.

## Alcance
Los JAR no están incluidos. El proyecto fue generado y revisado estructuralmente, pero no se ejecutó en un servidor Tomcat/MySQL en este entorno. No se necesita MySQL para los ejercicios 1–7. Este es un proyecto académico local; no incluye autenticación ni protección CSRF. El SQL en JSP se conserva para cumplir el ejercicio y no representa una arquitectura de producción. No se configura un pool JNDI: el ejemplo SQL de la guía usa sql:setDataSource.
Tomcat 10+ utiliza Jakarta y requiere otras dependencias: no uses estos JAR javax sin adaptar el proyecto.
