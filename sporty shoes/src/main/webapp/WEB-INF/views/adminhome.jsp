<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<style>
</style>
</head>
<body>
	<jsp:include page="adminheader.jsp"/>
	<br><br><br>
	<ul>
		<li><a href="change_password" style="color:black;font-size:30px">Change password</a><br></li><br>
		<li><a href="manage_products" style="color:black;font-size:30px;">Manage Products</a><br></li><br>
		<li><a href="users_list" style="color:black;font-size:30px">List of users</a><br></li><br>
		<li><a href="search_user" style="color:black;font-size:30px">Search User</a><br></li><br>
		<li><a href="purchase_reports" style="color:black;font-size:30px">Purchase Reports</a><br></li>
	</ul>
</body>
</html>