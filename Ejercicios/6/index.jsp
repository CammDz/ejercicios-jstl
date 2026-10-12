<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">6</span>Iteraciones con c:forEach</h2>
<p class="descripcion">Serie 1–24 con incremento de 2. Se marca la primera iteración y la quinta.</p>
<ol class="lista-numeros">
<c:forEach begin="1" end="24" step="2" var="hour" varStatus="status">
<li class="${status.first or status.count eq 5 ? 'destacado' : ''}"><c:out value="${hour}" /><c:if test="${status.first}"><span class="etiqueta">Estoy en uno</span></c:if><c:if test="${status.count eq 5}"><span class="etiqueta">Iteración número 5</span></c:if></li>
</c:forEach>
</ol>
<div class="grupo-botones"><a class="boton boton-secundario" href="../../index.jsp">&larr; Volver al menú</a></div>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>