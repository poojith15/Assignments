<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List,com.cg.entity.Question"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Play Quiz</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<h1 class="text-center">Play Quiz</h1>
	<div class="col-md-10 text-right">
	<span class="m-1"></span>
		<a class="btn btn-danger" href="home.htm">home</a>
	</div>
	<hr/>
	<form action="finishquiz.htm" method="post">
		<c:forEach items="${ qlist}" var="q">
		<div class="m-2 mx-auto bg-primary text-white col-md-4">
			<div class="m-1">
				 ${q.qdesc}
				</div>
			<div class="m-1">
			    <input type="radio" name="${q.qid}"
			                        value ="${q.opta }"/>
				${q.opta }
			</div>
			<div class="m-1">
			<input type="radio" name="${q.qid}" 
			                    value ="${q.optb }"/>
				${q.optb }
			</div>
			<div class="m-1">
			<input type="radio" name="${q.qid}" 
			                    value ="${q.optc }"/>
				${q.optc }
			</div>
		</div>
		</c:forEach>
		<div class="text-center"><input type="submit" value="finish" /></div>
	</form>
</body>
</html>