<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">8</span>Registrar empleados</h2>
<p class="descripcion">Los datos se guardan en la base de datos <span class="monospace">empleados</span> (tabla <span class="monospace">empleados</span>).</p>
<c:if test="${not empty param.error}"><p class="error"><c:out value="${param.error}" /></p></c:if>
<c:if test="${param.ok eq '1'}"><p class="ok">Empleado registrado correctamente.</p></c:if>
<form action="Procesarinfo.jsp" method="post">
<div class="campo"><label for="nombre">Nombre</label><input id="nombre" name="nombre" maxlength="100" placeholder="Ej.: Ana"></div>
<div class="fila-form">
<div class="campo"><label for="apellido1">Primer apellido</label><input id="apellido1" name="apellido1" maxlength="100" placeholder="Ej.: García"></div>
<div class="campo"><label for="apellido2">Segundo apellido</label><input id="apellido2" name="apellido2" maxlength="100" placeholder="Ej.: López"></div>
</div>
<div class="campo"><label for="edad">Edad</label><input type="number" id="edad" name="edad" min="1" max="120" step="1" required placeholder="Ej.: 34"></div>
<div class="grupo-botones"><button type="submit">Guardar</button><a class="boton boton-secundario" href="listar.jsp">Ver empleados</a></div>
</form>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>