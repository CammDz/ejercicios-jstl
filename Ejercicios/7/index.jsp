<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">7</span>Separación con c:forTokens</h2>
<p class="descripcion">Introduce un texto y un delimitador: cada carácter del delimitador separa un elemento.</p>
<form action="ResultTokens.jsp" method="post">
<div class="campo"><label for="texto">Texto con delimitador</label><input id="texto" name="delimText" placeholder="Java,HTML,CSS" required></div>
<div class="fila-form"><div class="campo"><label for="delim">Delimitador</label><input id="delim" name="delim" value="," required><span class="ayuda">Pueden ser uno o varios caracteres, p. ej. <span class="monospace">,</span></span></div></div>
<div class="grupo-botones"><button type="submit">Separar</button></div>
</form>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>