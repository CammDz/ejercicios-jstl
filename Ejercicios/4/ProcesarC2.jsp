<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">4</span>Resultado</h2>
<c:choose>
<c:when test="${param.lenguaje eq 'Java'}"><p class="seleccion">El rey de los lenguajes orientados a objetos.</p></c:when>
<c:when test="${param.lenguaje eq 'C++'}"><p class="seleccion">Ideal para aprender.</p></c:when>
<c:when test="${param.lenguaje eq 'Perl'}"><p class="seleccion">Lenguaje de scripting muy potente.</p></c:when>
<c:otherwise><p class="seleccion">No se seleccionó ninguno.</p></c:otherwise>
</c:choose>
<div class="grupo-botones"><a class="boton boton-secundario" href="index.jsp">&larr; Volver</a></div>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>