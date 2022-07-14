<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a Grade</title>
</head>
<body>
	<h1>Add a Grade</h1>
	
	<form action="/AddGradeConfirmation" method="post">
		<input type=hidden name="id" value="${grade.id}">
		
		<b>Name</b> <input name="name" type="text" min=1 max=30><br><br>
		
		<b>Type</b> <select name="type">
			<option value="Assignment">Assignment</option>
			<option value="Quiz">Quiz</option>
			<option value="Exam">Exam</option>			
		</select><br><br>
		
		<b>Score</b> <input name="score" type="number" step="0.01" min=0><br><br>
		
		<b>Total</b> <input name="total" type="number" step="0.01" min=0><br><br>
		
		<input type="submit" value="Add"> <a href="/">Cancel</a>
	</form>
</body>
</html>