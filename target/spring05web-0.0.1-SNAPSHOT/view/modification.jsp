<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title><spring:message code="titre.creation.elementcourses"/></title>
</head>
<body>
<form:form method="post" modelAttribute="modification" action="modifierModificationListeCourses">
	<table border="1">
		<thead>
			<tr>
				<th><spring:message code="colonne.identifiant"/></th>
				<th><spring:message code="colonne.libelle"/></th>
				<th><spring:message code="colonne.quantite"/></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${modification.listeCourses}" var="courses" varStatus="status">
				<tr>
					<td>
						<c:out value="${courses.id}" />
						<input type="hidden" name="listeCourses[${status.inde}].id" value="${course.id}" />
					</td>
					<td>
						<c:out value="${courses.libelle}" />
						<input type="hidden" name="listeCourses[${status.inde}].libelle" value="${course.libelle}" />
					</td>
					<td>
						<c:out value="${courses.quantite}" />
						<input type="hidden" name="listeCourses[${status.inde}].quantite" value="${course.quantite}" />
						<br/>
						<b><i><form:errors path="listeCourses[${status.inde}].quantite"/></i></b>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<input type="submit"/>
</form:form>

</body>
</html>