<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Grades</title>
</head>
<body>
	<h1>Grades</h1>
	
	<div class="data">
		<table>
			<tr>
				<th>Name</th>
				<th>Type</th>
				<th>Score</th>
				<th>Total</th>
			</tr>
			
			<c:forEach var="grade" items="${grades}">
				<tr>
					<td><c:out value="${grade.name}"/></td>
					<td><c:out value="${grade.type}"/></td>
					<td>${grade.score}</td>
					<td>${grade.total}</td>
					<td><a href="/delete-grade?id=${grade.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<br>
	<a href="/AddGrade">Add a Grade</a>
</body>
</html>