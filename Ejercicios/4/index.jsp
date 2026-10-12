<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">4</span>Condiciones múltiples</h2>
<p class="descripcion">Elige una opción: c:choose evaluará cada c:when.</p>
<form action="ProcesarC2.jsp" method="post">
<div class="campo"><label for="lenguaje">¿Cuál es tu lenguaje de programación favorito?</label>
<select id="lenguaje" name="lenguaje">
<option value="">Seleccionar un lenguaje</option>
<option value="Java">Java</option>
<option value="C++">C++</option>
<option value="Perl">Perl</option>
</select></div>
<div class="grupo-botones"><button type="submit">Enviar</button></div>
</form>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>