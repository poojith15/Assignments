<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">s
</head>
<body>
<h1 class="text-center">Search Employee</h1>
<span class="m-1">${initParam.slogan}</span>
	<div class="col-md-10 text-right">
		<a class="btn btn-danger" href="home.htm">home</a>
	</div>
	<hr/>
	<form action="search.htm">
		<div class="col-md-4 mx-auto p-1">
		<input type="number" name="txtsearch" required placeholder="enter employee Id"/>
		<input type="submit" value="search"/>
		</div>
	</form>
</body>
</html>