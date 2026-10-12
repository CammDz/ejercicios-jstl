<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<c:if test="${empty fn:trim(param.nombre)}"><c:redirect url="index.jsp"><c:param name="error" value="Nombre obligatorio" /></c:redirect></c:if>
<c:if test="${empty fn:trim(param.apellido1)}"><c:redirect url="index.jsp"><c:param name="error" value="Primer apellido obligatorio" /></c:redirect></c:if>
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">3</span>Datos validados</h2>
<p class="ok">Nombre y primer apellido correctos.</p>
<dl>
<div class="resultado-fila"><dt>Nombre</dt><dd><c:out value="${param.nombre}" /></dd></div>
<div class="resultado-fila"><dt>Primer apellido</dt><dd><c:out value="${param.apellido1}" /></dd></div>
<div class="resultado-fila"><dt>Segundo apellido</dt><dd><c:out value="${param.apellido2}" /></dd></div>
</dl>
<div class="grupo-botones"><a class="boton boton-secundario" href="index.jsp">&larr; Volver</a></div>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>