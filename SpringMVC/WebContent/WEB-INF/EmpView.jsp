<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<h1 class="text-center">Tax calculation</h1>
<span class="m-1">${initParam.slogan}</span>
	<div class="col-md-10 text-right">
		<a class="btn btn-danger" href="home.htm">home</a>
	</div>
	<hr/>
	
	<c:if test="${employee eq null}">
	<div class="alert alert-warning col-md-3 mx-auto">${msg}</div>
	</c:if>
	<c:if test="${employee ne null}">
		<table class="table table-striped mx-auto col-md-4">
			<tr>
				<td>Employee Id</td>
				<td>${employee.empId}</td>
			</tr>
			<tr>
				<td>Employee Name</td>
				<td>${employee.empName}</td>
			</tr>
			<tr>
				<td>Employee Salary</td>
				<td>${employee.empSal}</td>
			</tr>
			<tr>
				<td>Employee Department</td>
				<td>${employee.dept}</td>
			</tr>
		</table>
	</c:if>
</body>
</html>