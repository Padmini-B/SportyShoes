<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<style>
	b{
		font-size:20px;
	}
</style>
</head>
<body align="center">
	<jsp:include page="adminheader.jsp"/>
	<h1>Search Result</h1>
	<table align="center" width=600 height=100>
		<tr>
			<th style="background-color:black;color:white;">ID</th>
			<th style="background-color:black;color:white;">Username</th>
			<th style="background-color:black;color:white;">Password</th>
		</tr>
		<tr>
			<td>${users.id}</td>
			<td>${users.username}</td>
			<td>${users.password}</td>
		</tr>
	</table><br><br>
	<b>${result}</b>
</body>
</html>