<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users List</title>
<style>
	tr:nth-child(odd) {
  		background-color: #F0F0F0;
	}
	th{
		background-color:black;
		color:white;
	}
	th,td{
		padding:5px 5px 5px 5px;
	}

	button:hover{
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	}
</style>
</head>
<body align="center">
	<jsp:include page="adminheader.jsp"/>
	<h1>Users List</h1>
	<table align="center" width=600 height=100>
		<tr>
			<th style="background-color:black;color:white;">ID</th>
			<th style="background-color:black;color:white;">Username</th>
			<th style="background-color:black;color:white;">Password</th>
		</tr>
		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.id}</td>
				<td>${user.username}</td>
				<td>${user.password}</td>
			</tr>
		</c:forEach>
	</table><br><br>
	<a href="add_user"><button style="border:none;
		font-size: 16px;
		background-color: black;
		padding: 10px 20px;
		border-radius: 25px;
		color:white;">Add User</button></a>
</body>
</html>