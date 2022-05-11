<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Products</title>
<style>
	.button {
		border: none;
		font-size: 20px;
		background-color: black;
		padding: 5px 15px;
		border-radius: 25px;
		color: white;
	}
	
	.button:hover {
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
			rgba(0, 0, 0, 0.19);
	}
	
	b {
		font-size: 20px;
	}
</style>
</head>
<body align="center">
	<jsp:include page="adminheader.jsp" />
	<h1>Manage Products</h1>
	<br><br>
	<a href="addproduct" class="button" style="color:white">Add Product</a>
	<br><br><br>
	<a href="deleteproduct" class="button" style="color:white">Delete Product</a>
</body>
</html>