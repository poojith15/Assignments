<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Management</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<h1 align="center">Transfer Fund</h1>
	<div class="text-center">
		<a class="btn btn-danger" href="home">Home</a>
	</div>
	<hr />
	<h2 class="text-center">Do Transfer</h2>
	<c:if test="${msg ne null}">
		<div class="col-md-4 mx-auto alert alert-danger">${msg}</div>
	</c:if>
	<form:form action="submittransfer" method="post" modelAttribute="tbean">
		<table class="col-md-8 table table-striped mx-auto">
			<tr>
				<td>From Account ID</td>
				<td><form:input path="fromAccountId" type="number" /></td>
				<td><form:errors path="fromAccountId" class="text-danger"/></td>
			</tr>
			<tr>
				<td>To Account ID</td>
				<td><form:input path="toAccountId" type="number" /></td>
				<td><form:errors path="toAccountId" class="text-danger"/></td>
			</tr>
			<tr>
				<td>Amount</td>
				<td><form:input path="amt" type="number" /></td>
				<td><form:errors path="amt" class="text-danger"/></td>
			</tr>
			<tr><td colspan="3"><input type="submit" value="Transfer"/></tr>
		</table>
	</form:form>
</body>
</html>