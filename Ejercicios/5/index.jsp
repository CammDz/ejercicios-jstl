<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">5</span>Excepciones con c:catch</h2>
<p class="descripcion">Prueba un texto, un número y la ausencia de un parámetro. El error se captura con c:catch.</p>
<c:if test="${param.probar eq 'si'}">
<c:catch var="error01">
<c:choose><c:when test="${empty param.parametro}"><fmt:parseNumber value="parámetro ausente" var="valor" /></c:when><c:otherwise><fmt:parseNumber value="${param.parametro}" integerOnly="true" parseLocale="en_US" var="valor" /></c:otherwise></c:choose>
</c:catch>
<c:if test="${not empty error01}"><p class="error"><strong>Error capturado:</strong> no se pudo convertir "<c:out value="${empty param.parametro ? 'parámetro ausente' : param.parametro}" />" en un número.</p></c:if>
<c:if test="${empty error01}"><p class="ok">Valor recibido: <c:out value="${valor}" /></p></c:if>
</c:if>
<div class="grupo-botones">
<form method="post"><input type="hidden" name="probar" value="si"><input type="hidden" name="parametro" value="prueba"><button type="submit">Enviar <span class="monospace">'prueba'</span></button></form>
<form method="post"><input type="hidden" name="probar" value="si"><input type="hidden" name="parametro" value="1234"><button type="submit">Enviar <span class="monospace">'1234'</span></button></form>
<form method="post"><input type="hidden" name="probar" value="si"><button type="submit">No enviar el parámetro</button></form>
</div>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>