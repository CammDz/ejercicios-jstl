<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">2</span>Datos guardados con c:set</h2>
<c:set var="nombre" value="${param.nombre}" />
<c:set var="apellido1" value="${param.apellido1}" />
<c:set var="apellido2" value="${param.apellido2}" />
<dl>
<div class="resultado-fila"><dt>Nombre</dt><dd><c:out value="${nombre}" /></dd></div>
<div class="resultado-fila"><dt>Primer apellido</dt><dd><c:out value="${apellido1}" /></dd></div>
<div class="resultado-fila"><dt>Segundo apellido</dt><dd><c:out value="${apellido2}" /></dd></div>
</dl>
<div class="grupo-botones"><a class="boton" href="index.jsp">&larr; Volver</a></div>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>