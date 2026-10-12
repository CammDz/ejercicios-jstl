<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">2</span>Guardar y modificar una variable</h2>
<p class="descripcion">Una misma variable cambia de valor con c:set entre una línea y la siguiente.</p>
<ol class="lista-numeros">
<li><c:set var="mensaje" value="Primera asignación" /><c:out value="${mensaje}" /></li>
<li><c:set var="mensaje" value="Variable modificada con c:set" /><c:out value="${mensaje}" /></li>
</ol>
<div class="grupo-botones"><a class="boton boton-secundario" href="index.jsp">&larr; Volver</a></div>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>