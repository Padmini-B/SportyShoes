<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
<style>
	td{
		font-size:20px;
	}
	
	button:hover{
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	}
	b{
		font-size:20px;
	}
</style>
</head>
<body align="center">
	<jsp:include page="adminheader.jsp"></jsp:include>
	<form action="registeruser" method="post">
		<h1>Add User</h1>
		<table align="center">
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px "><b>ID:</b> </td>
				<td align="left"><input type="text" name="id"/></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px "><b>Username:</b></td>
				<td align="left"><input type="text" name="username"/></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px "><b>Password</b></td>
				<td align="left"><input type="password" name="password"/></td>
			</tr>
			<tr>
		</table><br><br>
		<button type="submit" style="border:none;
		font-size: 16px;
		background-color: black;
		padding: 5px 15px;
		border-radius: 25px;
		color:white;">Add</button>&ensp;
		<button type="reset" style="border:none;
		font-size: 16px;
		background-color: black;
		padding: 5px 15px;
		border-radius: 25px;
		color:white;">Reset</button>
	</form><br><br>
	<b>${result}</b>
</body>
</html>