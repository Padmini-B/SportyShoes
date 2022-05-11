<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
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
	b{
		font-size:20px;
	}
</style>
</head>
<body align="center">
	<jsp:include page="adminheader.jsp"/>
	<center><h1>Change Password</h1></center>
	<form action="change_password" method="post">
		<br><br>
		<table align="center">
			<tr>
				<td><input type="hidden" name="username" value="admin"/></td>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px ">Current Password</td>
				<td align="left" style="padding:10px 20px 10px 5px "><input type="password" name="cp"  required/></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px " >New Password</td>
				<td align="left" style="padding:10px 20px 10px 5px " ><input type="password" name="password"  required/></td>
			</tr>
			<tr>
				<td align="left" style="padding:10px 20px 10px 5px">Confirm Password</td>
				<td align="left" style="padding:10px 20px 10px 5px" ><input type="password" name="np"  required/></td>
			</tr>
		</table><br>
		<button type="submit" class="button">Change</button>
	</form><br><br>
	<b>${res}</b>
</body>
</html>