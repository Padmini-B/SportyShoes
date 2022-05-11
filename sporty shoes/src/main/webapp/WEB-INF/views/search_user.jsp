<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search User</title>
<style>
	td{
		font-size:20px;
	}
	.button{
		border:none;
		font-size: 16px;
		background-color: black;
		padding: 5px 15px;
		border-radius: 25px;
		color:white;
	}
	.button:hover{
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	}
</style>
</head>
<body align="center">
	<jsp:include page="adminheader.jsp"/>
	<center><h1>Search User</h1></center>
	<br>
	<form action="search_user" method="post">
		<table align="center">
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px ">Id</td>
				<td align="left" style="padding:10px 20px 10px 5px "><input type="text" name="id"/></td>
			</tr>
		</table><br><br>
		<button type="submit" class="button">Search</button>
	</form>
</body>
</html>