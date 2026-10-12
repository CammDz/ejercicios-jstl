<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">3</span>Validación con c:if</h2>
<p class="descripcion">Nombre y primer apellido son obligatorios; el segundo es opcional.</p>
<c:if test="${not empty param.error}"><p class="error"><c:out value="${param.error}" /></p></c:if>
<form action="Procesarif.jsp" method="post">
<div class="campo"><label for="nombre">Nombre</label><input id="nombre" name="nombre" maxlength="100" placeholder="Ej.: Ana"></div>
<div class="fila-form">
<div class="campo"><label for="apellido1">Primer apellido</label><input id="apellido1" name="apellido1" maxlength="100" placeholder="Ej.: García"></div>
<div class="campo"><label for="apellido2">Segundo apellido</label><input id="apellido2" name="apellido2" maxlength="100" placeholder="Ej.: López"></div>
</div>
<div class="grupo-botones"><button type="submit">Validar</button></div>
</form>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>