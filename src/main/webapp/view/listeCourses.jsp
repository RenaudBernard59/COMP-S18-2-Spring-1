<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title><spring:message code="titre.creation.elementcourses"/></title>
</head>
<body>
<form:form method="post" modelAttribute="creation" action="creerCreationListeCourses">
	<spring:message code="creation.elementcourses.libelle.libelle" />
	<form: input path="libelle" />
	<b><i><form:error patch="libelle" cssclass="error" /></i></b><br/>
	
	<spring:message code="creation.elementcourses.libelle.quantite" />
	<form: input path="quantite" />
	<b><i><form:error patch="quantite" cssclass="error" /></i></b><br/>
	<input type="submit"/>
</form>

<table border="1">
	<thead>
	<tr>
		<th><spring:message code="colonne.identifiant"/></th>
		<th><spring:message code="colonne.libelle"/></th>
		<th><spring:message code="colonne.quantite"/></th>
	</tr>
	</thead>
	<tbody>
		<c:forEach items="${listeCourses}" var="courses">
		<tr>
			<td><c:out value="${courses.id}" /></td>
			<td><c:out value="${courses.libelle}" /></td>
			<td><c:out value="${courses.quantite}" /></td>
		</tr>
		</c:forEach>
	</tbody>

</table>


</body>
</html>