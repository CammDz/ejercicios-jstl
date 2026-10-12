<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<c:if test="${pageContext.request.method ne 'POST'}"><c:redirect url="index.jsp" /></c:if>
<c:if test="${empty fn:trim(param.nombre)}"><c:redirect url="index.jsp"><c:param name="error" value="Nombre obligatorio" /></c:redirect></c:if>
<c:if test="${empty fn:trim(param.apellido1)}"><c:redirect url="index.jsp"><c:param name="error" value="Primer apellido obligatorio" /></c:redirect></c:if>
<c:catch var="errorEdad"><c:set var="edad" value="${param.edad + 0}" /></c:catch>
<c:if test="${not empty errorEdad or empty param.edad or edad lt 1 or edad gt 120 or edad mod 1 ne 0}"><c:redirect url="index.jsp"><c:param name="error" value="La edad debe ser un entero entre 1 y 120." /></c:redirect></c:if>
<c:catch var="errorSQL">
<%@ include file="../../WEB-INF/jspf/conexion.jspf" %>
<c:set var="nombres" value="${fn:trim(param.nombre)}" /><c:set var="apellido1" value="${fn:trim(param.apellido1)}" /><c:set var="apellido2" value="${fn:trim(param.apellido2)}" />
<sql:update dataSource="${empleados}" var="insertar">
INSERT INTO empleados (nombres, apellido1, apellido2, edad) VALUES (?, ?, ?, ?)
<sql:param value="${nombres}" /><sql:param value="${apellido1}" /><sql:param value="${apellido2}" /><sql:param value="${edad}" />
</sql:update>
</c:catch>
<c:if test="${not empty errorSQL}"><c:redirect url="index.jsp"><c:param name="error" value="No se pudo guardar. Revisa MySQL, la base de datos, las credenciales y el conector JDBC." /></c:redirect></c:if>
<c:redirect url="listar.jsp"><c:param name="ok" value="1" /></c:redirect>