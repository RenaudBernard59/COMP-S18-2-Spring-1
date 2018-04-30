<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="titre.listecourses"/></title>
</head>
<body>
<table border="1">
	<thead>
		<th><spring:message code="colonne.identifiant"/></th>
		<th><spring:message code="colonne.libelle"/></th>
		<th><spring:message code="colonne.quantite"/></th>
	</thead>
	<tbody>
		<c:forEach items="${listeCourses}" var="courses">
			<td><c:out value="${course.id}" /></td>
			<td><c:out value="${course.libelle}" /></td>
			<td><c:out value="${course.quantite}" /></td>
		</c:forEach>
	</tbody>

</table>


</body>
</html>