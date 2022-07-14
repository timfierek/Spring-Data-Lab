<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grade Successfully Added!</title>
</head>
<body>
	<h1>Grade Added</h1>
	
	The grade was added to the database.
	
	<h3>Details</h3>
	<b>Name: </b><c:out value="${name}"/><br><br>
	<b>Type: </b><c:out value="${type}"/><br><br>
	<b>Score: </b><fmt:formatNumber value="${score}" pattern="#.#"/><br><br>
	<b>Total: </b><fmt:formatNumber value="${total}" pattern="#.#"/><br><br>
</body>
</html>