<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz Result</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>
	<h1 class="text-center">Tax calculation</h1>
	<div class="col-md-10 text-right">
	<span class="m-1">${initParam.slogan}</span>
		<a class="btn btn-danger" href="home.htm">home</a>
	</div>
	<hr />

	<table class="col-md-4 table table-striped mx-auto">
		<tr>
			<td>Score</td>
			<td>${score}</td>
		</tr>
		<tr>
			<td>Percentage</td>
			<td>${score*100/5.0}</td>
		</tr>
		<tr>
			<td>Result</td>
			<td>
			<c:choose>
			<c:when test="${score ge 3}">
			<div class="alert alert-success"></div>
			</c:when>
			<c:otherwise>
			<div class="alert alert-danger"></div>
			</c:otherwise>
			</c:choose>
			
			</td>
		</tr>
	</table>

</body>
</html>