<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">7</span>Texto separado</h2>
<c:choose>
<c:when test="${empty param.delimText or empty param.delim}"><p class="error">Debes enviar el texto y el delimitador.</p></c:when>
<c:otherwise>
<ul class="lista-tokens"><c:forTokens items="${param.delimText}" delims="${param.delim}" var="myToken"><li><c:out value="${myToken}" /></li></c:forTokens></ul>
</c:otherwise>
</c:choose>
<div class="grupo-botones"><a class="boton boton-secundario" href="index.jsp">&larr; Volver</a></div>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>