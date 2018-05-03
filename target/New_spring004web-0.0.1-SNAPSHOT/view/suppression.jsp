<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<table border="1">
	<thead>
	<tr>
		<th><spring:message code="colonne.identifiant"/></th>
		<th><spring:message code="colonne.libelle"/></th>
		<th><spring:message code="colonne.quantite"/></th>
		<th>&nbsp;</th>
	</tr>
	</thead>
	<tbody>
		<c:forEach items="${listeCourses}" var="courses">
		<tr>
			<td><c:out value="${courses.id}" /></td>
			<td><c:out value="${courses.libelle}" /></td>
			<td><c:out value="${courses.quantite}" /></td>
			<td>
				<c:url value="/supprimerSuppressionListeCourses" var="url">
					<c:param name="idCourse" value="${courses.id}" />
				</c:url>
				<a href="${url}">
					<spring:message code="suppression.supprimer.libelle" />
				</a>
			</td>
		</tr>
		</c:forEach>
	</tbody>
</table>