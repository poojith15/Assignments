<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>
	<h1 class="text-center">Tax calculation</h1>
	<div class="col-md-10 text-right">
		<a class="btn btn-danger" href="Home.jsp">home</a>
	</div>
	<hr />
	<form action="tax.htm">
		<table class="col-md-4 table table-striped mx-auto">
			<tr>
				<td>Employee Name</td>
				<td><input type="text" name="txtname" required /></td>
			</tr>
			<tr>
				<td>Annual Income</td>
				<td><input type="number" name="txtincome" required /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" /></td>
				<td></td>
			</tr>
		</table>
	</form>
</body>
</html>