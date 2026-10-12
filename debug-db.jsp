<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>Debug DB</title></head>
<body style="font-family:monospace;padding:20px">
<h2>Debug conexion Supabase (temporal)</h2>
<c:catch var="errorSQL">
<%@ include file="WEB-INF/jspf/conexion.jspf" %>
<sql:query var="rs" dataSource="${empleados}">SELECT 1 AS ok</sql:query>
</c:catch>
<c:choose>
<c:when test="${not empty errorSQL}">
<p style="color:red"><b>FALLO:</b></p>
<ul>
<li>message: <c:out value="${errorSQL.message}" /></li>
<li>cause: <c:out value="${errorSQL.cause}" /></li>
<li>rootCause: <c:out value="${errorSQL.rootCause}" /></li>
<li>SQLState: <c:out value="${errorSQL.SQLState}" /></li>
<li>errorCode: <c:out value="${errorSQL.errorCode}" /></li>
<li>full: <c:out value="${errorSQL}" /></li>
</ul>
<p>Si dice <i>password authentication failed</i>: revisa DB_USER/DB_PASSWORD.<br>
Si dice <i>relation "empleados" does not exist</i>: falta ejecutar supabase.sql.<br>
Si dice <i>Connection refused / timeout / Unknown host</i>: la DB_URL (host/puerto) esta mal o necesitas el pooler puerto 6543.<br>
Si dice <i>No suitable driver</i>: el driver Postgres no cargo (revisa logs del build).</p>
</c:when>
<c:otherwise>
<p style="color:green"><b>OK: conexion funciona.</b> SELECT 1 = <c:out value="${rs.rows[0].ok}" /></p>
<c:catch var="e2"><sql:query var="r2" dataSource="${empleados}">SELECT count(*) AS n FROM empleados</sql:query></c:catch>
<c:choose>
<c:when test="${not empty e2}">
<p style="color:red">Pero tabla empleados falla: <c:out value="${e2.message}" /> — ejecuta supabase.sql</p>
</c:when>
<c:otherwise><p>Filas en empleados: <c:out value="${r2.rows[0].n}" /></p></c:otherwise>
</c:choose>
</c:otherwise>
</c:choose>
<p><a href="index.jsp">Volver</a> | Borra este archivo cuando termines.</p>
</body></html>
