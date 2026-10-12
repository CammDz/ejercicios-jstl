<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<%@ include file="../../WEB-INF/jspf/inicio.jspf" %>
<div class="card">
<h2 class="titulo"><span class="badge">8</span>Empleados registrados</h2>
<c:if test="${param.ok eq '1'}"><p class="ok">Empleado registrado correctamente.</p></c:if>
<c:catch var="errorSQL"><%@ include file="../../WEB-INF/jspf/conexion.jspf" %><sql:query var="result" dataSource="${empleados}">SELECT id,nombres,apellido1,apellido2,edad FROM empleados ORDER BY id</sql:query></c:catch>
<c:choose>
<c:when test="${not empty errorSQL}"><p class="error">No se pudo consultar. Revisa la configuración de MySQL y el conector JDBC.</p></c:when>
<c:otherwise>
<div class="tabla"><table>
<thead><tr><th>Id</th><th>Nombre</th><th>Primer apellido</th><th>Segundo apellido</th><th>Edad</th></tr></thead>
<tbody>
<c:forEach items="${result.rows}" var="fila">
<tr><td><c:out value="${fila.id}" /></td><td><c:out value="${fila.nombres}" /></td><td><c:out value="${fila.apellido1}" /></td><td><c:out value="${fila.apellido2}" /></td><td><c:out value="${fila.edad}" /></td></tr>
</c:forEach>
</tbody>
</table></div>
<c:if test="${result.rowCount eq 0}"><p class="vacio">No hay empleados registrados.</p></c:if>
</c:otherwise>
</c:choose>
<div class="grupo-botones"><a class="boton" href="index.jsp">Registrar otro</a><a class="boton boton-secundario" href="../../index.jsp">&larr; Volver al menú</a></div>
</div>
<%@ include file="../../WEB-INF/jspf/fin.jspf" %>