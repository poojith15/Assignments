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
	<h1 class="text-center">Home page</h1>
	<h3 class="text-center">${initParam.slogan}</h3>
	<hr />
	<nav class="alert alert-primary row col-md-10 mx-auto">
		<div>
			<a class="btn btn-danger m-2" href="taxform.htm">Calculation Tax</a>
		</div>
		<div>
			<a class="btn btn-danger m-2" href="empform.htm">Search Employee</a>
		</div>
		<div>
			<a class="btn btn-danger m-2" href="StartQuiz.htm">Play Quiz</a>
		</div>
		<div>
			<a class="btn btn-danger m-2" href="download.htm">Download</a>
		</div>
	</nav>
</body>
</html>