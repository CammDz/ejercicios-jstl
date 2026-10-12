<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="WEB-INF/jspf/inicio.jspf" %>
<section class="hero">
<h1>Ejercicios <span class="grad">práctica</span></h1>
</section>
<div class="rejilla">
<section class="card"><span class="badge">1</span><h3>Impresión con c:out</h3><p>Cadena literal y suma de valores.</p><a class="boton" href="Ejercicios/1/index.jsp">Abrir</a></section>
<section class="card"><span class="badge">2</span><h3>Variables con c:set</h3><p>Guardar, mostrar y modificar variables.</p><a class="boton" href="Ejercicios/2/index.jsp">Abrir</a></section>
<section class="card"><span class="badge">3</span><h3>Validación con c:if</h3><p>Comprobar obligatorios y redirigir.</p><a class="boton" href="Ejercicios/3/index.jsp">Abrir</a></section>
<section class="card"><span class="badge">4</span><h3>c:choose / c:when</h3><p>Condiciones (Java, C++, Perl).</p><a class="boton" href="Ejercicios/4/index.jsp">Abrir</a></section>
<section class="card"><span class="badge">5</span><h3>Excepciones con c:catch</h3><p>Capturar errores de conversión.</p><a class="boton" href="Ejercicios/5/index.jsp">Abrir</a></section>
<section class="card"><span class="badge">6</span><h3>Iteraciones c:forEach</h3><p>Estado de la iteración con varStatus.</p><a class="boton" href="Ejercicios/6/index.jsp">Abrir</a></section>
<section class="card"><span class="badge">7</span><h3>Separar con c:forTokens</h3><p>Dividir texto por delimitador.</p><a class="boton" href="Ejercicios/7/index.jsp">Abrir</a></section>
<section class="card"><span class="badge">8</span><h3>Registro y consulta SQL</h3><p>Empleados en la base de datos empleados.</p><a class="boton" href="Ejercicios/8/index.jsp">Abrir</a></section>
</div>
<%@ include file="WEB-INF/jspf/fin.jspf" %>