<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">1</span>Impresión con c:out</h2>
<p class="descripcion">c:out escapa el contenido y evalúa las expresiones EL.</p>
<dl>
<div class="resultado-fila"><dt>Cadena literal</dt><dd><c:out value="1+2+3" /></dd></div>
<div class="resultado-fila"><dt>Suma de valores</dt><dd><c:out value="${1+2+3}" /></dd></div>
</dl>
<div class="grupo-botones"><a class="boton boton-secundario" href="../../index.jsp">&larr; Volver al menú</a></div>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>